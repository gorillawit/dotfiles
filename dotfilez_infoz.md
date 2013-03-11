#The micacle of dotfiles or something

litterally. they are all the .blablah files in your home dir that are hidden.
__for easier management, just leave off the . in the dotfile folder, all those files will be symlinked and given a precedding dot

run something like

      mv ~/.vimrc ~/dotfiles/vimrc
to  copy the existing (no dot) file into the home dir


once you get a few or if you just want to start committing
(at after this point, they will still be local)

#### stare by adding this script

    The commented sections in the above script explain it. First, the script cleans up any old symlinks that may exist in our home directory and puts them into a folder called dotfiles_old. It then iterates through any files in our ~/dotfiles directory and it creates symlinks from our home directory to these files. It handles naming these symlinks and prepending a dot to their filename.


__The commented sections in the above script explain it. First, the script cleans up any old symlinks that may exist in our home directory and puts them into a folder called dotfiles_old. It then iterates through any files in our ~/dotfiles directory and it creates symlinks from our home directory to these files. It handles naming these symlinks and prepending a dot to their filename.__

If we’ve got this script in our dotfiles directory, and we’ve got our dotfiles in there too, we’re ready to start using Git to manage these files.

<hr>

#### now into GIT Proper
