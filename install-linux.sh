#/bin/bash

if [[ `uname` != 'Linux' ]]; then
   echo "Non-Linux platform detected, exiting."
   exit 1
fi

echo "Detecting OS..."
uname
echo

cd "$(dirname "$0")"/src

cp shared/.nanorc ~/

cp linux/.bashrc ~/
cp linux/.vimrc ~/

mkdir -p ~/go/{src,bin,pkg}
