"""Preflighted, atomic event-file output."""

import os
from pathlib import Path
import tempfile


class AtomicOutput:
    """Reserve a same-directory file, then atomically publish one payload."""

    def __init__(self, destination):
        self.destination = Path(destination)
        self._file = None
        self._temporary = None

    def prepare(self):
        if self.destination.is_dir():
            raise IsADirectoryError(str(self.destination))
        self.destination.parent.mkdir(parents=True, exist_ok=True)
        handle, name = tempfile.mkstemp(
            prefix=".%s." % self.destination.name,
            suffix=".tmp",
            dir=str(self.destination.parent),
        )
        self._file = os.fdopen(handle, "wb")
        self._temporary = Path(name)
        return self

    def commit(self, payload, *, overwrite=True):
        if self._file is None:
            raise RuntimeError("output is not prepared")
        try:
            self._file.write(payload)
            self._file.flush()
            os.fsync(self._file.fileno())
            self._file.close()
            self._file = None
            if overwrite:
                os.replace(self._temporary, self.destination)
            else:
                # A hard-link create is atomic and fails if the destination
                # already exists, so persistence never silently overwrites.
                os.link(self._temporary, self.destination)
                self._temporary.unlink()
            self._temporary = None
        except Exception:
            self.abort()
            raise

    def abort(self):
        if self._file is not None:
            self._file.close()
            self._file = None
        if self._temporary is not None:
            try:
                self._temporary.unlink()
            except FileNotFoundError:
                pass
            self._temporary = None
