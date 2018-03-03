================================================================================
                         MICROSOFT WINDOWS VERSION 2.0
================================================================================

DOCUMENTATION CORRECTION

PIF Editor
----------
Page 182, "Microsoft Windows User's Guide"
The manual says the PIF Editor, PIFEDIT.EXE, may be located in
the PIF directory, a subdirectory of the main Windows directory.
Actually, it is in the main Windows directory.

Page 228, "Microsoft Windows User's Guide"
The manual says that if "you don't specify an amount of memory,
SMARTDrive will receive 256K (the default size)." This is true if
you are using extended memory.  However, if you are using expanded
memory for SMARTDrive, then the default is all of available expanded
memory.



ADDITIONAL FEATURES

Minimize MS-DOS Executive
-------------------------
You can automatically reduce the MS-DOS Executive to an icon each time
you run an application. This frees up memory and reduces screen clutter.

1. Select the MS-DOS Executive File Run command. A dialog box is
   displayed.

2. Turn on the check box option called Minimize MS-DOS Executive; then
   choose the OK button or press the ENTER key.

Once you turn on this option, it remains in effect until you turn it off.

Spooler will Terminate After Printing is Completed
--------------------------------------------------
A feature has been added to the Spooler. If the Spooler is running as
an icon, Spooler will terminate (and free up the memory it was using)
when printing is finished. If Spooler is running as a window, it will
not terminate automatically.

NOTES ON EARLIER VERSIONS OF WINDOWS

Following are notes of interest if you have used earlier versions of
Windows.

Using Applications Designed for Earlier Windows Versions
--------------------------------------------------------
Windows applications, such as Aldus Pagemaker 1.0A, often include versions
of the Windows files SPOOLER.EXE, CONTROL.EXE, and CLIPBOARD.EXE as well
as instructions to use these file versions rather than the ones supplied
with Windows. You should NOT use these file versions with Windows 2.0.

Instead use the Windows 2.0 versions of SPOOLER.EXE, CONTROL.EXE and
CLIPBOARD.EXE. This contradicts the instructions included with your
application; however, these instructions apply to using the application
with earlier versions of Windows, not to using the application with
Windows 2.0.





New Font File Format
--------------------
Some applications designed for use with Windows include font files (files
with a .FON extension). For example, Aldus Pagemaker 1.0A includes several
font files. Font files designed for use with earlier versions of Windows
will not work correctly with Windows 2.0. Included with Windows 2.0 is a
program, NEWFON.EXE, that converts your old font files to the new Windows
2.0 format. Here's how to create the new font files:

1. Change directories to the disk drive and directory in which the old
   font file(s) is located.

2. Create a backup copy of the old font file(s). You do this by typing
   the following command:

	COPY *.FON *.BAK

3. Place the "Utilities Disk" in drive A:




4. Start the Newfon program from the A: disk drive. The form of the
   Newfon command is the following:

	A:NEWFON [old-font-filename]

   For example, to create a new PageMaker font file, PMFONTE.FON, you
   would type:

	A:NEWFON PMFONTE.FON

NOTE:	You may also specify a new font file name. The form of the Newfon
	command for doing this is the following:

	A:NEWFON [old-font-filename] [new-font-filename]

WARNING: You will lose the old font file if you do not make a backup copy.
         Be certain to backup your old font files.





Using Windows 2.0 Paint Files with Applications Designed for Windows 1.0
------------------------------------------------------------------------
The Windows 2.0 Paint file format differs from that of earlier versions
of Paint. Thus applications designed to read Windows 1.0 Paint files
can no longer do so. To work around this problem, either use Copy and
Paste to move images from Windows 2.0 Paint into those applications
designed to read Windows 1.0 Paint files, or use CVTPAINT.EXE to convert
2.0 Paint files into 1.0 Paint files.

Paint version 2.0 can read Paint files having the version 1.0 format.












CHANGING SETTINGS IN THE CONFIG.SYS FILE

The following notes relate to changing command lines in the CONFIG.SYS
file.

Using SMARTDrive
----------------
Appendix C, "Speeding Up Windows with SMARTDrive" in the Windows User's
Guide contains detailed instructions on installing the disk-caching
program SMARTDrive provided with Windows 2.0. The following is updated
information on adding SMARTDRV.SYS to your CONFIG.SYS file:

- Set the buffers= command line to 10. Setting buffers= to higher values
  uses memory without additional performance benefits; setting it to a
  lower value reduces performance benefits.

- Put the "device=smartdrv.sys" command line after the "device=" command
  line for any expanded memory manager you may be using (i.e. emm.sys,
  remm.sys, ps2emm.sys, etc.).



- If you have a Compaq Deskpro and ENHDISK.SYS is listed in your
  CONFIG.SYS file, and you wish to use SMARTDrive, you must list the
  SMARTDRV.SYS command line after ENHDISK.SYS.

- If you intend to use expanded memory for SMARTDrive, be sure to
  use the /A flag.

Using RAMDrive
--------------
In general, SMARTDrive gives better overall performance than RAMDrive.
One exception is output performance for frequently written files.  We
recommend that you use SMARTDrive; however, a new version of RAMDrive
is included with Windows 2.0.  This version performs significantly
better than older versions and is the ONLY version that works with
Windows 2.0.

For detailed documentation on RAMDrive, see RAMDRIVE.TXT located on
your Utilities Disk.




Using EGA.SYS with an EGA Display Adapter
-----------------------------------------
If your display adapter is an EGA (Enhanced Graphics Adapter), you can
improve the quality of standard applications by using the device driver
file EGA.SYS included on the Utilities Disk. Here's what to do:

1. Copy EGA.SYS from the Utilities Disk to your hard disk.

2. Add a line of the following form to your CONFIG.SYS file:

	device=[drive:][path]EGA.SYS

If you have a mouse installed on your computer, be sure to add the
EGA.SYS line before the MOUSE.SYS line.

Adding the EGA.SYS device driver is optional; it will enhance the
performance of standard applications, but it is not required.





NOTES ON USING EXPANDED MEMORY

Windows 2.0 can utilize any expanded memory board which implements the
LIM 4.0 expanded memory specification in its memory management software.
To determine if your expanded memory board implements LIM 4.0, see your
board's documentation or contact the manufacturer.

Windows 2.0 contains software supporting the AST RAMpage, the IBM
Personal System/2 Expanded Memory Option, and the Intel Above Board.
This software is located in three files, REMM.SYS, PS2EMM.SYS, and
EMM.SYS located on the Utilities Disk.

The software for the AST RAMpage is named REMM.SYS.  For detailed
instructions on how to install REMM.SYS, see the file REMM.TXT on
the Utilities Disk.

The software for the IBM Personal System/2 Expanded Memory Option
is named  PS2EMM.SYS.  For detailed instructions on how to install
PS2EMM.SYS, see the file PS2EMM.TXT on the Utilities Disk.



The software for the INTEL Above Board is named EMM.SYS. For detailed
instructions on how to install EMM.SYS, see the file EMM.TXT on the
Utilities Disk.

The performance of expanded memory boards is enhanced by disabling some
of your computer's main memory, and replacing that memory with some of
your expanded memory board's memory. If your computer supports the
disabling of main memory, and your expanded memory board supports the
use of its memory as main memory, then you should disable your computers
main memory down to 256K, and use your expanded memory board's memory
to fill main memory back up to 640K.











ADDITIONAL INFORMATION

Slow Response When Running DOS Apps on the IBM PS/2 Model 50, 60, & 80
----------------------------------------------------------------------
If you have a Microsoft Mouse installed on your IBM PS/2 Model 50,
60, or 80, keyboard and mouse response may seem slow when switching
from Windows to a standard DOS application. When you switch to a DOS
application, Windows re-enables your DOS mouse driver. On the IBM PS/2
Model 50, 60, & 80, this process causes some delay. Thus, the keyboard
and mouse may seem unresponsive during the switch.

Disk Space Needed to Run DOS Applications
-----------------------------------------
Windows will not allow you to execute a DOS application if ample disk
space is not available. To calculate the needed disk space, add 128K
to twice the amount of memory requested by the application's PIF file.






Running Windows 2.0 on Floppy Disk Drives
-----------------------------------------
Windows 2.0 will run on three different floppy drive configurations:
1 high density (1.2 Megabyte or greater) floppy drive; two 720K,
3 1/2" diskette drives; or two 360K, 5 1/4" floppy drives.

On the two 360K floppy configuration, some font files and the Spooler
are not set up so that disk space will be available for a printer
driver. You can use a different font by using the Control Panel to
delete the present font, and install a new one. Using Spooler with
a floppy drive setup is not recommended. Likewise, running DOS
applications from Windows on a floppy drive system is not recommended.

When using a two floppy system, be careful to start windows with the
Startup Disk in drive A: and the System Disk in drive B:. Swapping
these disks will cause Windows to malfunction. Be particularly careful
on machines having both a 5 1/4" drive and a 3 1/2" drive.





THINGS TO AVOID

Deleting Fonts When More Than 40 Fonts Are Installed
----------------------------------------------------
If you want to delete a font when more than 40 fonts are installed, you
should use Notepad to modify the WIN.INI file rather than Control Panel.
Control Panel can only handle 40 fonts. In WIN.INI, locate the [fonts]
header and delete the entire line for the fonts you wish to delete.

Using the DOS JOIN Command with Windows 2.0
-------------------------------------------
From Windows, using the DOS command, JOIN, to join floppy drives on
a single drive system may cause your system to halt.

Using APPEND During Setup
-------------------------
Do not use the DOS command, APPEND, before running the Windows Setup
process.  Doing so may confuse Setup and cause it to fail.




Using TSR (Terminate and Stay Resident) Applications with Windows
-----------------------------------------------------------------
Most TSR applications, such as Borland's SideKick, do not function
properly under Windows, especially if they modify the screen. We do
not recommend using TSR applications with Windows. If you choose to
risk using a TSR, be sure to start it BEFORE starting Windows.

Running with Low Memory
-----------------------
As you run out of memory, Windows' graphics will deteriorate, e.g.
icons become black, menu bars do not display.  Also, the clipboard
may malfunction, and Windows may give "Not enough memory" messages.
In this situation, close an unused application to enhance performance.

Using Display Drivers Designed for Earlier Windows Versions
-----------------------------------------------------------
Most display drivers designed for earlier Windows versions will not
work with Windows 2.0. If a driver for your display is not included,
then contact your display's manufacturer for an updated driver.



If no driver is available, try installing your old one.  Install your
old driver by choosing "Other" when Setup asks you to choose a display
adapter. After Setup, replace files in your Windows directory having a
.FON extension with the corresponding files from your Windows 1.0
Fonts Disk. For example, replace HELVA.FON with the HELVA.FON file on
your Windows 1.0 Font Disk.

Setting Up Windows 2.0 Over Earlier Versions of Windows
-------------------------------------------------------
We do not recommend setting up over an earlier version of Windows.
Instead, copy files you wish to keep to a temporary directory (be
sure to copy modified PIF files), delete the old version of Windows,
Setup Windows 2.0, and then copy the temporary files into the new
Windows set up.

If you do set up over an earlier version of Windows, the WIN.INI file
will be renamed WIN.OLD. You may wish to rename this file to WIN.INI
if you had important information in your old WIN.INI file. Optionally,
you may want to use Notepad to copy information from WIN.OLD into your
new WIN.INI file.


Having Multiple Versions of Windows on the Same Fixed Disk
----------------------------------------------------------
Windows 2.0 and other versions of Windows have many filenames in
common. If you have multiple versions of Windows on your computer,
avoid problems by including the path to only one version in your
PATH environment variable.

Problems Using Special Format
-----------------------------
On some DOS configurations, you cannot use the Special Format command
from the MS-DOS Executive.  If you experience this problem, you can
still format a diskette by running DOS FORMAT with the File Run command
from the MS-DOS Executive.

Using EGA.SYS with Compaq EGA Cards Running Under DOS 3.0
---------------------------------------------------------
EGA.SYS does not function properly with a Compaq EGA card running
under IBM DOS 3.0. If you experience this problem, do not use EGA.SYS
or upgrade your DOS.



Running Certain MS-DOS 3.1 Commands
-----------------------------------
Due to the way some MS-DOS version 3.1 commands are implemented, they
will not work when run from Windows 2.0. If you must run these commands
from Windows, upgrade your MS-DOS.

Running BASICA Version 3.2 in a Window
--------------------------------------
BASICA version 3.2 will not run in a window because it directly modifies
the keyboard.  It will run full screen if you change the PIF file such
that "Directly Modifies Keyboard" is checked.











ADDITIONAL PRINTER INFORMATION

For more information on printers, see these files located on the
Utilities Disk:

	Epson LQ			READMEEP.TXT
	Hewlett Packard Plotters	READMEPL.TXT
	IBM Proprinters			READMEPR.TXT
	PCL / HP LaserJet		READMEHP.TXT
	Postscript / LaserWriter	READMEPS.TXT









================================================================================
                               END OF README.TXT
================================================================================
