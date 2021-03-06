# You should be backup your files before install
# First, you need to put this porject in your host directory and rename .vim. the command with following:
#
#	git clone git@github.com:cbsheng/CVim.git ~/.vim
#
# And then, open the directory. the command with following:
#
#	cd ~/.vim
#
#In the end, run command with following:
#
#	./install.sh
#

echo "Install vim configuration"

echo "create .vimrc and .gvimrc"
rm -f ~/.vimrc
rm -f ~/.gvimrc
ln -s ~/.vim/vimrc  ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

echo "update submodule"
git submodule init
git submodule update
