# TGC-Charge Monitoring System

## Description
This is the official repository to store useful files for the ATLAS TGC charge monitoring system update. 
The main system consist of a mother board (MB) that can read up to 5 mezzanines. Each each mezzanine can read up to 8 analog channels, we call this: 40 channel MB or "MB40ch". there are smaller versions of these MB, for instance the MB16ch, a simplified version, that help us to develop firmware and test modules before the inserting them into the MB40ch.
The MB40ch is controlled by a Zynq SoC embedded in a board from the Trenz company (**TE0715-04**, vivado board file ->**TE0715_15_1I**) and a CPLD from lattice (**LCMXO3D-9400HC-6CABGA484**) that serves as a multiplexer for the mezzanines ADCs.   

## altium
Altium desing files to help guide through the different boards developed for the project, speciañly the 40ch mother borad and the readout mezzanines.

## cpld_lattice
Firmware for the CPLD, it has to be programmed separately from the trenz firmware and with a different jtag.

## zynq
Firmware and software to program the zynq embedded in the Trenz SoM.

## tools
Firmware for the MB16ch, for mezzanine and trenz SoM tests 