#!/data/data/com.termux/files/usr/bin/bash

if termux-setup-storage | grep -Fq 'already exists'; then
   echo "Downloading...";
else
   echo "It will open a message, click the ALLOW button when the message appears."
   termux-setup-storage
   echo "Done! Now Downloading..."
fi

curl http://mirrors.sdu.edu.cn/termux/termux-main/pool/main/w/wget/wget_1.21.3-3_"$(uname -m)".deb -o wget.deb | sed "$,(echo "Downloading wget..."),"
dpkg -i wget.deb | sed "$,(echo "Installing wget..."),"
rm wget.deb
wget https://github.com/itayalush/Termux-Unstable-Repo-libapt-pkg.so-Fix/releases/download/"$(uname -m)"/apt_termux.deb | sed "$,(echo "Downloading apt..."),"
wget https://github.com/itayalush/Termux-Unstable-Repo-libapt-pkg.so-Fix/releases/download/"$(uname -m)"/libc++_termux.deb | sed "$,(echo "Downloading libc++..."),"
echo "Installing..."
dpkg -i apt_termux.deb | sed "$,(echo "Installing apt..."),"
dpkg -i libc++_termux.deb | sed "$,(echo "Installing libc++..."),"
rm apt_termux.deb
rm libc++_termux.deb
