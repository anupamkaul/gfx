#/bin/bash

echo -e "Running weston config..\n"

# get my latest wayland
git clone https://github.com/anupamkaul/wayland.git

cd wayland
  git remote add upstream https://github.com/wayland-project/wayland.git
  git remote -v
cd ..
echo ""

# get my latest wayland-protocols
git clone https://github.com/anupamkaul/wayland-protocols.git

cd wayland-protocols
  git remote add upstream https://github.com/wayland-project/wayland-protocols.git
  git remote -v
cd ..
echo ""

# get my latest libinput
git clone https://github.com/anupamkaul/libinput.git

cd libinput
  git remote add upstream https://github.com/wayland-project/libinput.git
  git remote -v
cd ..
echo ""

# get my latest weston
git clone https://github.com/anupamkaul/weston.git

cd weston
  git remote add upstream https://github.com/wayland-project/weston.git
  git remote -v
cd ..

# source all vars
source ./Install.sh
echo $PKG_CONFIG_PATH

# build weston
echo -e "\nbuilding wayland in $WLD.." 
cd wayland
./run.meson
cd ..

echo -e "\nbuilding wayland-protocols in $WLD.."
cd wayland-protocols
./run.meson
cd ..

echo -e "\nbuilding libinput in $WLD.."
cd libinput
./run.meson
cd ..

echo -e "\nbuilding weston in $WLD"
cd weston
./run.meson
cd ..








