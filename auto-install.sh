#!/data/data/com.termux/files/usr/bin/bash

if termux-setup-storage | grep -Fq 'already exists'; then
   echo "Downloading...";
else
   echo "It will open a message, click the ALLOW button when the message appears."
   termux-setup-storage
   echo "Done! Now Downloading..."
fi
curl --slient http://mirrors.sdu.edu.cn/termux/termux-main/pool/main/w/wget/wget_1.21.3-3_"$(uname -m)".deb -o wget.deb
dpkg -i wget.deb | grep literallynothing
rm wget.deb
wget https://github.com/itayalush/Termux-Unstable-Repo-libapt-pkg.so-Fix/releases/download/"$(uname -m)"/apt_termux.deb | grep literallynothing
wget https://github.com/itayalush/Termux-Unstable-Repo-libapt-pkg.so-Fix/releases/download/"$(uname -m)"/libc++_termux.deb | grep literallynothing
echo "Installing..."
dpkg -i apt_termux.deb | grep literallynothing
dpkg -i libc++_termux.deb | grep literallynothing
rm apt_termux.deb
rm libc++_termux.deb
