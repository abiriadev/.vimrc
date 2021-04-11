# .vimrc

## This repository is just my .vimrc setting file.

> anyone can utilize this setting for anything!

anyway, vim is awesome!

## Quick guide

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/abiriadev/.vimrc
mv .vimrc/.vimrc ~/
vim +PluginInstall +qall
```

## Details

- caution:

> first of all, this case uses [Vundle](https://github.com/VundleVim/Vundle.vim) as an extension manager.
> if you are using another, you may need to edit this .vimrc file in a part of the plugin settings.

1. first, clone Vundle from this address to the home path.

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

> if you already have installed Vundle, skip this step.

2. clone this repo too.

```
git clone https://github.com/abiriadev/.vimrc
```

> if .vimrc directory or file already exists at the current path, replace that will be generated repo name with any placeholder name (such as 'asdf'), and retry.

```
git clone https://github.com/abiriadev/.vimrc asdf
```

3. and take out the .vimrc file and place to home path from cloned repo

```
mv .vimrc/.vimrc ~/ -i
```

> If my .vimrc file overwrites the .vimrc file, make sure to back up your .vimrc file.

4. finally, install plugins.

```
vim +PluginInstall +qall
```

alternatively, open vim and type `:PluginInstall` within vim command mode.

> **now you can use vim that all settings synchronized!**

## Test environments

this example was tested in `WSL Ubuntu-20.04`, `Windows 10 Git Bash`, `Android termux`

> also to follow the above guide, [git](https://git-scm.com/) and [vim](https://www.vim.org/) must be installed in your environment.

## Contributing

if you have results of tested in another environment, send PR, please.

or if the result of the above guide in your environment is unmatched to the results of above's, please open the issue :)
