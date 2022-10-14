# my dot-files  for Linux, Mac

1. Vim
2. Zsh
3. Tmux
4. Etc.

***

+++

## Vim
### Requirements
- [https://github.com/VundleVim/Vundle](https://github.com/VundleVim/Vundle.vim.git)


```bash
 $ cd  ~
 $ git clone https://github.com/bernardocarvalho/dot-files
 $ ln -s ~/dot-files/vim  ~/.vimrc
 $ vim
 :PluginInstall
```
## Zsh
### Requirements
- ["Oh My ZSH!"]([https://github.com/VundleVim/Vundle.vim.git](https://ohmyz.sh/)
- zsh-completions
- zsh-autosuggestions
- zsh-syntax-highlighting

```bash
 $ cd  ~
 $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
 $ git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
 $ git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
 $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

 $ git clone https://github.com/bernardocarvalho/dot-files
 $ ln -s ~/dot-files/zshrc ~/.zshrc
 (logout/login)
```
## References

[1]  [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

