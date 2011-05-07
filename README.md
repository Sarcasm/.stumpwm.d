README
======

Description
-----------
StumpVM configuration files, starting from init.lisp.

Requirements
------------
The file ~/.stumpwmrc in home should contain the following code:

    ;; -*-lisp-*-
    (in-package :stumpwm)
    (load "~/.stumpwm.d/init.lisp")

On debian the following command should install the required packages:

    sudo aptitude install git sblc


Install
-------
In console:

    git clone git@github.com:Sarcasm/.stumpwm.d.git ~/.stumpwm.d

In ~/.xinitrc

    dbus-launch stumpwm

Contact
-------
Guillaume Papin - guillaume.papin@epitech.eu
