#!/bin/bash
############################
# This script creates symlinks from the home directory to dotfiles in ~/dotfiles
############################

########## Variables

DIR=~/dotfiles                    # dotfiles directory
OLDDIR=~/dotfiles_old             # old dotfiles backup directory
FILES="bashrc \
bash_profile \
tmux.conf \
tmux.reset.conf \
config/nvim \
config/starship.toml"

echo $DIR $OLDDIR $FILES

##########

# create dotfiles_old in homedir
echo "Creating $OLDDIR for backup of any existing dotfiles in ~"
mkdir -p $OLDDIR
echo "...done"

# change to the dotfiles directory
echo "Changing to the $DIR directory"
cd $DIR || exit
echo "...done"


# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $FILES; do
    echo "Moving any existing dotfiles from ~ to $OLDDIR"
    mv ~/.$file ${OLDDIR}
    echo "Creating symlink to $file in home directory."
    ln -s ${DIR}/$file ~/.$file
done
