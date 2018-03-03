
    -------------------------------------------------------------
               README for Microsoft Internet Explorer 5 
                     and Other Internet Tools
                    For Windows 3.x/Windows NT 3.51
                              February 1999      
    -------------------------------------------------------------

              (c) Copyright Microsoft Corporation, 1999


This document provides complementary or late-breaking 
information to supplement the Microsoft Internet Explorer 
documentation. You can also look at the Microsoft(R) Web 
site for the latest information.

If you're looking for information about a specific program 
or component, try searching for it in the Microsoft Knowledge 
Base at http://support.microsoft.com/support/c.asp?FR=0.

------------------------
HOW TO USE THIS DOCUMENT
------------------------

To view Readme.txt on screen in Notepad, maximize the Notepad 
window.

To print Readme.txt, open it in Notepad or another word 
processor, and then use the Print command on the File menu.


CONTENTS
========

System Requirements
Setup
Uninstalling Internet Explorer and other Internet Tools 
Known Issues
 

SYSTEM REQUIREMENTS
===================

To run Internet Explorer 5, your computer must meet the 
following minimum requirements:

- A 486 with a 25 MHz processor

- For Microsoft Windows 3.1x:
  12 MB of RAM minimum

- For Microsoft Windows NT 3.51:
  16 MB of RAM minimum

- 30 MB of hard-disk space to run Setup for a minimum install 
  (minimum install will use about 16 MB of space)

- Mouse

- Modem or network interface card



SETUP
=====

Whether you choose to install over the network or to download 
the installation files to your hard disk, the Setup files are 
copied to your hard disk. This is so that you can reinstall 
more quickly if you need to. 

You cannot install this version of Internet Explorer 5 to or
run it from a network drive. However, you can download it to
a network drive. To do this, you must map the network drive
to a drive letter on your computer.


UNINSTALLING INTERNET EXPLORER 5 AND OTHER INTERNET TOOLS
=========================================================

If you want to reinstall an earlier version of Internet 
Explorer, you must first uninstall version 5. If you install 
an earlier version without uninstalling version 5, the earlier 
version of Internet Explorer may not run properly.

Automatic uninstall is supported in this version, although some 
files will be left in the Windows\System directory and may be 
used by other applications, including Internet Explorer version 
3.x. These files include the following:

    Urlmon16.dll
    Win16x.dll
    Rb32.dll
    Comctlie.dll 
    Secur16.dll
    Security.dll
    Msnssp16.dll
    Msapsp16.dll
    Basic.dll
    Schnl16.dll
    Secssp16.dll
    Rsaci.rat
    Jscrpt16.dll
    Vscrpt16.dll
    Comctl16.dll
    Signin16.hlp

If, after installing Internet Explorer 5, you want to install 
Internet Explorer version 4.x, you must first uninstall Internet 
Explorer 5 using the included Uninstall program, and then 
manually delete the Win16x.dll file from the Windows\System 
folder. If you do not do this, you may see a general protection 
fault when you install Internet Explorer 4.x. Because Win16x.dll 
is a system file, you should not delete it unless it is going 
to be replaced. (Installing Internet Explorer 4.x replaces this 
file.)

If you have created a dialer connection before running 
Uninstall, the Setup program will not delete those files from 
the directory where you installed this version of Internet 
Explorer. Also, the Dialer icon in the Internet Explorer 
program group will not be removed.


KNOWN ISSUES
============

Running Internet Explorer 5 on Windows 3.1
------------------------------------------
If you are using Windows version 3.1 (not version 3.11 or 
Windows for Workgroups), you must also be running the MS-DOS 
Share.exe program. To do this, carry out the following steps:

1. Open your Autoexec.bat file (usually found in the C:\ folder).
2. Add the following line to the end of the file, but before any 
   lines that read "win" or "win.com":

        share.exe


Internet Connection Wizard Doesn't Start
----------------------------------------
If Internet Explorer 5 is installed with the stack and Dialer 
but is set up using a LAN connection, switching from a LAN 
connection to the Dialer and then starting Internet Explorer 
does not start the Internet Connection wizard. 


Issues for ISDN Users
---------------------
The Internet Connection wizard in this version of Internet 
Explorer does not detect ISDN. If you use an ISDN modem, you 
must manually select the make and model when setting up 
Internet Explorer.

You also need to create connection icons. When you do this, 
you must include the following information: username, password, 
DNS (Domain Name System) server, and whether your ISP provides 
a static or dynamic IP address.

You must also select the correct connect speed for each 
connection. To do this, in the Properties dialog box for the 
connection, click the Modem tab. The recommended speed for 
dual-channel capability is 115,200 bps. 

This version of Internet Explorer does not support automatic 
account creation (via the Internet Connection wizard) for 
ISDN users.


Downloading Files via FTP
-------------------------
If you download a file by using FTP over a modem, the file will 
be downloaded before you see the dialog box asking you where to 
save the file. If the file is a large one, it may appear that 
nothing is happening while the file is downloading.


SSL Connection Problems: Changing Ports in Outlook Express
----------------------------------------------------------
When viewing newsgroups in Outlook Express, if you need to 
change the port number in order to make an SSL connection (for 
example, if you did not originally specify that the server you 
want requires an SSL connection), you must either click another 
folder after changing the port number or restart Outlook Express. 
Only then will you be able to download the newsgroups on the SSL 
server.


Importing an Address Book from Internet Mail to Outlook Express
---------------------------------------------------------------
Outlook Express may not automatically import your existing 
Address Book from Microsoft Internet Mail. To import the Address 
Book manually, carry out the following steps:

1. Open the Address Book.
2. Click the File menu.
3. Click Import Address Book.
4. Choose to import the  Microsoft Internet Mail for Windows 3.1 
   Address Book. 

   The file should be located in the directory 
   Iexplore\Mail\User1 (or User2, 3, etc., if 
   you have multiple user accounts set up).


Tasks Not Appearing in the Task List
------------------------------------
If you click the Send And Receive toolbar button or Send And 
Receive on the Tools menu when you are connected to an IMAP 
(rev1) account, and no tasks appear in the task list, carry 
out the following steps:

1. Open the Properties dialog box for the account.
2. Select Check For New Messages In Subscribed Folders. 


Issues with SSL and PCT
-----------------------
If you use the Advanced dialog box (on the Tools menu, click 
Internet Options, and then click Advanced) to enable or disable 
SSL versions 2.0 or 3.0 or PCT, you must restart Internet 
Explorer for your changes to take effect.


Installing on Computers with Large Amounts of Memory
----------------------------------------------------
When you install on a computer that has 40 MB or more of 
memory, you may receive an error message during setup 
indicating that your computer does not have enough memory 
to install Internet Explorer. If this happens, locate the 
Setup.exe file (in the IE5setup folder) and run it with the 
command line switch "/f:16". You can do this by using the 
Run command from either File Manager or Program Manager.

Internet Explorer 3.x Dialer May Not Work After Uninstall
---------------------------------------------------------
If you are running Internet Explorer 3.x with Phone Dialer,
and then you install Internet Explorer 5 in a different
directory , the version 3.x Phone Dialer will not work
properly if you uninstall Internet Explorer 5. To work
around this problem, you must specify the version 3.x Phone
Dialer settings again.

You Cannot Run Two Versions of Microsoft E-Mail
-----------------------------------------------
If you are running Internet Explorer 3.x with Internet Mail
and News installed, and then you install Internet Explorer 5
and Other Internet Tools, you will no longer be able to use
Internet Explorer 3.x Internet Mail and News. This is true
even if you do not install Outlook Express with Internet
Explorer 5 and Other Internet Tools. However, if you choose
to  install Outlook Express, you can import your e-mail messages
and Address Book information from Internet Mail and News.

Using Unattended Synchronization
--------------------------------
If you are using Internet Explorer 5 with a third-party dialer,
be sure to specify a timeout limit for the dialer so that it
doesn't stay connected indefinitely. 

Running embedded components on Windows NT 3.51
-----------------------------------------------
We experienced some problems running plug-ins when the Operating
System is Windows NT 3.51.  This is due to the fact that the
plug-in manufacturer thought that since the user is installing a
16-bit plug-in they must be installing it on a 16-bit Operating
System. Some plugins will prevent an install on Windows NT 3.51
however most do not.  
