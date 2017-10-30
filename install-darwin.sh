#/bin/bash

if [[ `uname` != 'Darwin' ]]; then
   echo "Non-Darwin platform detected, exiting."
   exit 1
fi

echo "Detecting OS..."
uname
echo

cd "$(dirname "$0")"/src

cp shared/.nanorc ~/

cp darwin/.profile ~/
cp darwin/.vimrc ~/

mkdir -p ~/go/{src,bin,pkg}
