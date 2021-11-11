# Tab's (previous Mathias’s) dotfiles

![Screenshot of my shell prompt](https://www.xanthir.com/pictures/console-example.png)

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/dotfiles`.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/tabatkins/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Git-free install

To install these dotfiles without Git:

```bash
cd; curl -#L https://github.com/tabatkins/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md,bootstrap.sh,.osx,LICENSE-MIT.txt}
```

To update later on, just run that command again.

### Add custom commands without creating a new fork

If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

## Things To Do After Installing, To Finish Setup

A few reminders of extra stuff I need to do after downloading these files:

### Put your git credentials into `~/.extra`

```
# git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="Tab Atkins-Bittner"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jackalmage@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

### Set up `pyenv`

These files assume that pyenv is being used to manage python versions and install locations. Remember to install [Pyenv](https://github.com/pyenv/pyenv/) (probably using the [automatic installer](https://github.com/pyenv/pyenv-installer)), then set it up with the appropriate versions (`pyenv install --list`, then `pyenv install x.y.z` for the specific versions you want, then `pyenv global x.y.z` and/or `pyenv local x.y.z` to select the installed versions.)

(If you don't do this, `pip install` will constantly complain about the install directory not being writable, and suggesting running with sudo. Don't do that.)
