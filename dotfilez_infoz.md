# The micacle of dotfiles or something 
[info from this dude's blog so using some of his scripts](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/)

litterally. they are all the .blablah files in your home dir that are hidden.
__for easier management, just leave off the . in the dotfile folder, all those files will be symlinked and given a precedding dot

run something like

      mv ~/.vimrc ~/dotfiles/vimrc
to  copy the existing (no dot) file into the home dir



add a few more (like zshscr, bshsrc) the same way. Now start comitting to local repository.
(at after this point, everything's still local)

#### start by adding this dude's script

    #!/bin/bash
    ############################
    # .make.sh
    # This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
    ############################
    ########## Variables
    dir=~/dotfiles                    # dotfiles directory
    olddir=~/dotfiles_old             # old dotfiles backup directory
    files="bashrc vimrc vim zshrc oh-my-zsh"    # list of files/folders to symlink in homedir
    ##########
    # create dotfiles_old in homedir
    echo "Creating $olddir for backup of any existing dotfiles in ~"
    mkdir -p $olddir
    echo "...done"
    # change to the dotfiles directory
    echo "Changing to the $dir directory"
    cd $dir
    echo "...done"
    # move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
    for file in $files; do
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file ~/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
    done


__The commented sections in the above script explain it. First, the script cleans up any old symlinks that may exist in our home directory and puts them into a folder called dotfiles_old. It then iterates through any files in our ~/dotfiles directory and it creates symlinks from our home directory to these files. It handles naming these symlinks and prepending a dot to their filename.__

If we’ve got this script in our dotfiles directory, and we’ve got our dotfiles in there too, we’re ready to start using Git to manage these files.

<hr>

#### now into GIT Proper

__initialize a new Git repo. To make our ~/dotfiles directory a Git repo, we simply change to it, and run the git init command:__
