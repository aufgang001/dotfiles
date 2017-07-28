Ubuntu Specific Configuration
=============================

Ubuntu 16.04
============
Auto hide of Launcher:

    #Launcher -> Appearance -> Behavior -> Auto-hide the Launcher -> ON

Disable the HUD (Head-Up-Display):

    #Launcher -> Keyboard -> Shortcuts -> Key to show the HUD -> Backspace Key
    
Disable sticky edges:

    #Launcher -> Displays -> Sticky edges -> OFF

Unity
    
    sudo apt update
    sudo apt install -y compizconfig-settings-manager
    ccsm 
    #!Do manual: Effects -> Animations -> Off
    #!Do manual: Effects -> Fading Windows -> Off 
    
Disable new windows opening in background [source](http://askubuntu.com/questions/310470/newly-opened-applications-open-in-background)
    
    ccsm
    #!Do manual: General -> General Options -> Focus & Raise Behaiviour -> Focus Prevention Level -> Off

Swap Capslock and Escape

    sudo apt install -y gnome-tweak-tool
    gnome-tweak-tool
    #!Do manual: Typing -> Caps Lock key behavior -> Swap ESC and Caps Lock
