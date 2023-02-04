building reference weston compositor:

general instructions to build weston:
https://wayland.freedesktop.org/building.html

changes: new code is in:
https://github.com/wayland-project

-- there seem to be 2 build methods:
1. as outlined above 
2. as explained in wayland-build-tools (but this seems not updated)

---

How to run my weston:

weston is installed in $WLD/install
source install.sh to get the value of $WLD
(set the source to run weston in that particular terminal as well)

(usually $WLD is $HOME/Wayland)

run weston as ./weston
make the weston terminal full screen
click on the terminal icon on its top left
this brings up the terminal
ls there and run any weston client directly from there
(this setting allows the clients to search for the unix socket created in $XDG_RUNTIME_DIR (which is the install dir))

this is the way I am able to run all weston clients

(running them via a separate terminal i.e. outside of the weston terminal throws the error $DISPLAY is not set)

---


