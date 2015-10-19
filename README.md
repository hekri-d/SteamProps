SteamProps version 0.9  19/10/2015

GENERAL NOTES
-------------

SteamProps (Steam Properties) is a GUI application 
that can be used to find thermodynamic steam/water properties at a large variety
 of states.

The fresteam library project on which this application is based can be found here 
http://freesteam.sourceforge.net/.

With SteamProps, a thermodynamic state can be defined(fixed) in seven 
different combinations of two thermodynamic properties. Pressure - internal,
energy(p,u), temperature - entropy(T,s), temperature - steam quality(T,x),
etc., after which, all other properties for that particular state, are 
automatically calculated and displayed.


INSTALLATION INSTRUCTIONS
-------------------------

The SteamProps.tar.bz2 contains everything needed to install and run 
SteamProps.

To install:

-unpack the downloaded SteamProps.tar.bz2 archive and put it somewhere 
sane (home directory is what I recommend).

-[optional]create a desktop shortcut pointing to the SteamProps.sh (NOT the exec 
file SteamProps!)

-Now the program should run when the Desktop shortuct is clicked. Clicking 
the SteamProps.sh (or the SteamProps binary) file directly should work too. 

-That's it.Done.


SOME TIPS (DESKTOPS)
--------------------

1.When entering pressure you can choose between the default units which are Pascal(Pa)
and Kelvin (K).
If you click the button which says "bar" (right after the inputfield for pressure)
you'll be using bar as units, if not the default units (pascal) will be used.

2.The same goes for temperature. If you click the " 'C " button, you'll be using 
celsius as units otherwise the default (kelvin) will be used.

3.Tap spacebar twice to calculate. This can be used as a shortcut so that you don't
need to use the mouse all the time.



SIDE NOTE ON SHORTCUTS.
----------------------

On different linux distros there are different ways of creating application 
shortcuts.

For example.

On Linux Mint these steps need to be followed: right click somewhere on Desktop, 
from the menu that comes up choose the option "create new launcher here". A new 
dialog window shows up, in the "Name:" field enter a name for the shortcut. In 
the "Command:" field, click "Browse" and locate the file of interest
(SteamProps.sh in this case). 

Optional. On the left, click the rectangle containing a red/white rocket and browse 
for a picture (freesteamIcon.png in this case). In the "Comment:" field goes any 
comments about the application that is being linked. It's also possible to make 
the program launch in terminal by checking the "Launch in Terminal?" checkbox.
And, finally click "OK".


On LXLE: locate the executable file (SteamProps.sh in this case), righ click on 
it and choose add to Desktop. Done.(If the add to Desktop option is missing find out
how to NOT display menus when desktop is clicked).



TESTED - WORKING ON
-------------------

-Linux Mint 17.2 Rafaela, Cinnamon edition 64 bit.

-LXLE 64 bit.

-Lubuntu 14.04 LTS 64 bit.

-OpenSUSE x64

Although not tested it should also work on other Ubuntu or Debian (x64) derivatives.

Windows, Mac or 32 bit Linux systems, are not supported at the moment.But this will 
change soon.


AUTHORS
-------

Hekuran Dushi.
hekri.d@gmail.com



LICENSE
-------

This software is licensed under the GNU GENERAL PUBLIC LICENSE. See LICENSE.txt in
this directory for more. 


-------------
Hekuran Dushi.
19/10/2015
