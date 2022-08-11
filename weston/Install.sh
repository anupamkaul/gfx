#!/bin/bash
export WLROOT=$HOME/Wayland
export WLD=$WLROOT/install   # change this to another location if you prefer
export LD_LIBRARY_PATH=$WLD/lib
export PKG_CONFIG_PATH=$WLD/lib/x86_64-linux-gnu/pkgconfig/:$WLD/share/x86_64-linux-gnu/pkgconfig/:$WLD/share/pkgconfig:$WLD/lib/pkgconfig
export PATH=$WLD/bin:$PATH

# execute this as 'source ~/.Install.sh'
# but note that this currently overrides LD_LIBRARY_PATH for robotics etc.

# added ~/$root/.local/bin to PATH for finding meson
