#!/bin/bash
set -e
mydir=`dirname $0`

if [[ $mydir = . ]]; then
  mydir=`pwd`
fi

# Updating submodules

# git submodule update --init
# git submodule foreach git clean -fdx
# git submodule foreach git pull origin master

ryanb_dotfiles_dir=~/.dotfiles
iain_osx_settings_dir=$mydir/iain-osx_settings
twerth_dotfiles_dir=$mydir/twerth-dotfiles


# Cloning ryanb/dotfiles

if [ -d $ryanb_dotfiles_dir ]; then
	echo "Directory exists"
	cd $ryanb_dotfiles_dir
	git pull
else 
	echo "Directory does not exists"
	git clone git://github.com/ryanb/dotfiles ~/.dotfiles
fi

echo "Creating new gitconfig.erb file for dotfiles..."
cp $mydir/my_gitconfig.erb $ryanb_dotfiles_dir/gitconfig.erb

echo "Copying irbrc file from osx_settings to dotfiles..."
cp $iain_osx_settings_dir/.irbrc $ryanb_dotfiles_dir/irbrc

echo "Copying bashrc file settings from twerth/dotfiles to localrc..."
cat $twerth_dotfiles_dir/etc/bashrc | grep -Ev "~/cl" > $ryanb_dotfiles_dir/localrc
cat $mydir/localrc  >> $ryanb_dotfiles_dir/localrc


# Check Ruby 
if echo $rvm_ruby_version | grep -q '1.9'; then
  export RUBYOPT='-r openssl'
else
  export RUBYOPT=
fi

cd $ryanb_dotfiles_dir
rake install

echo 'open -a "Sublime Text 2" "$@"' > $mydir/slime
chmod +x $mydir/slime
mv $mydir/slime /usr/local/bin/slime

echo ""
echo "Done!"