__project_under_construction_flag__
# Step 1: Setup

In every professional computer environment the very first step is always finding the setup instructions and following them very carefully. Again, this is very important. **FOLLOW SETUP INSTRUCTIONS VERY CAREFULLY!**

It is often helpful to keep a log of which steps worked and which didn't work so that you can keep track of where you got stuck and let the authors of the setup know for them to be able to help you. If you say "I got stuck during Step 1 of the first tutorial when I ran the Windows setup script" they can zero in and troubleshoot. If you email them that nothing is working, while they can acknowledge that indeed everything is broken, they have no information to help you. 

We will install the necessary software on your machine to complete the rest of this "Hello World!" tutorial. Before sending us an email or reaching out to us for help, try first to sweat it out and use Google or Stack Exchange to search the error that has come up.

You can skip down to the appropriate operating system ( [Linux](#linux) | [Mac](#mac) | [Windows](#windows) ) for the instructions on the environment specific setup instructions. We have endeavored to create scripts for you to automatically run through the different install steps. If you would like to learn more about scripts see the references and appendix. The list of programs you need to successfully complete this first tutorial are as follows:
* TCL - Scripting language
* Expect - Adds additional commands built on top of TCL to test programs
* Git - Saves code
* Gcc - Compiles code
* Make - Helper program to compile code
* Python - Scripting language
* Sublime - Text editor with autosave. Any other text editor with the autosave feature will do too.

We won't get into the version details about the different programs here, but rest assured that's another topic that can take a while to understand.

## Linux
<!-- TODO: need access to Linux machine to run setup. Should be able to use built in software manager to install the necessary programs. -->

Because you are using Linux it will always be assumed that you understand how to install programs, we will simply list the required software. If this is the first time you are using Linux to install software, check to see what program you have as your software management system using this guide <http://www.control-escape.com/linux/lx-swinstall.html>. Then install the following programs using the command line tools and a free text editing program with autosave:
* tcl 
* expect
* git
* gdb
* gcc
* make
* cmake
* sublime 
* python 

Finally, if you're still stuck stop by SERC and see us. We'll be happy to help you get off the ground running with your Linux machine.

## Mac
The following instructions were tested on a clean install of MacOS 10.13. If you are running an earlier version of the Mac operating system the following may work. If it does not work see the subsequent instructions.
1. Open up `Terminal.app` in the `\Applications\Utilities` folder or use Spotlight to find it. Once it is open type `gcc` and hit the <kbd>enter</kbd> key. 
1. A dialog window will pop up and ask you to download and install the command line developer tools. 
1. Click `Install` (estimated 10 min)
Thats it!

### Older Macs
If you have App store account you can go to there and search for Xcode to install.

Otherwise, you must have a developer profile with Apple. Locate your OS version and follow the following link to download Xcode: <https://stackoverflow.com/questions/10335747/how-to-download-xcode-dmg-or-xip-file>

Once you have installed Xcode run the following command (open up the terminal App, type the text after the `$` character, and hit enter) in terminal:

    $ xcode-select --install

## Windows

We will be using Cygwin. You must install it, and the associated packages in order to run through this correctly. If you already have Cygwin installed you should still run this script to install the necessary software.

1. Run Install Setup Batch Script
   1. Navigate to the following URL <{{}}__project_repo_source_root__{{}}/T1/step-1-setup> 
   1. Click on `windows-setup.cmd`
   1. Click on the `Raw` button 
   1. Open up notepad and copy-and-paste the text into the empty text file.
   1. Save as `setup.cmd`
   1. To install the program for all uses, right-click `setup.cmd` and select `Run as administrator`.
   1. Follow through the instructions that are displayed on the window that pops up. This script walks through installing Cygwin and the necessary programs for running the rest of the tutorial.
1. Open up a new command window and type `ls` and then the <kbd>enter</kbd> key.
You should see a list of files in your current directory. 

If you get the following response:
```
'ls' is not recognized as an internal or external command,
operable program or batch file.
```

Then the program may not have been installed correctly. 

The first issue to check is to see that there is a Cygwin directory in your `C:` drive. 

Next, you need to check that the `PATH` system environment variable has the Cygwin `bin` directory in it. If the `PATH` has too many directories added to it, you may need to remove some and then run the script again to add Cygwin to the `PATH`.

As a last resort, you can always open the Cygwin Terminal application directly from the startup menu.

## Summary

At this point you will have equivalent software for building programs that can be run on any machine. You should be proud that you now have the information to set up a programming environement on the three major operating systems! 

## References 

1. Cygwin additional information 1 - https://www3.ntu.edu.sg/home/ehchua/programming/howto/Cygwin_HowTo.html
1. Cygwin additional information 2 - https://warwick.ac.uk/fac/sci/moac/people/students/peter_cock/cygwin/
1. Installing GCC on Windows - http://preshing.com/20141108/how-to-install-the-latest-gcc-on-windows/

# Updates
* Jan 1, 2021 - Generated from m4 template
* Nov 11, 2020 - Added python

[[Previous Page|T1-00]] | [[Next Page|T1-02]]