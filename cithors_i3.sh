apt install i3 git feh autoconf compton libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev gcc -y

mkdir i3-gaps && cd i3-gaps

git clone https://github.com/resloved/i3

cd i3

mkdir -p build && cd build
autoreconf -fi ..
../configure
make -j8 install

cd ../../..

cp -r {i3,polybar,compton.conf} ~/.config

