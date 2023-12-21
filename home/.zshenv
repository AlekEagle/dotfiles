# Why can't Java set this itself?
export JAVA_HOME=/usr/lib/jvm/default-java
# Don't remember why I set this, but if it ain't broke, don't fix it
export LIBVIRT_DEFAULT_URI="qemu:///system"
# Auto discovery for adb over mdns :D
export ADB_MDNS_OPENSCREEN=1
# Yummy kvantum theme B)
export QT_STYLE_OVERRIDE=kvantum
# Use a 64-bit wine prefix by default
export WINEPREFIX=/home/alekeagle/.wine64

# These are from .zshrc but they fit better here
# set PATH so it includes user's private bin if it exists
# Eww stinky
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
# Personally, I like to keep my local bin folder in .local/bin
# I'm only keeping the above in case some random program I use
# decides to use $HOME/bin instead of $HOME/.local/bin
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# If there is a ".localenv" file, source it. This is specifically for
# setting environment variables that are specific to a single machine
# and should not be shared with others.
if [ -f "$HOME/.localenv" ] ; then
    source "$HOME/.localenv"
fi