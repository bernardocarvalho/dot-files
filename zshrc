#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#
#git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
#
#If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.platformio/penv/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
# Path to your oh-my-zsh installation.
case "$OSTYPE" in
  darwin*)
    # ...
#    export ZSH="/Users/bernardo/.oh-my-zsh"
    export PATH="$HOME/bin:/opt/homebrew/opt/openjdk/bin:$PATH"
    # Setting for the new UTF-8 terminal support in
    export LC_CTYPE=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
#For compilers to find openjdk you may need to set:
#  export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
  ;;
  linux*)
    # ...
    #export ZSH="$HOME/.oh-my-zsh"
  ;;
esac

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster" # (this is one of the fancy ones)
#ZSH_THEME="random"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
# export FZF_BASE="$HOME/.vim/bundle/fzf"
# export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

case "$OSTYPE" in
  darwin*)
    # ...
    export EDITOR='vim'
    plugins=(git z fzf sudo macos common-aliases docker alias-finder aliases copypath copyfile web-search brew zsh-completions zsh-autosuggestions zsh-syntax-highlighting)
  ;;
  linux*)
    # ...
    export EDITOR='vim'
    plugins=(git z fzf sudo alias-finder copypath copyfile web-search zsh-completions zsh-autosuggestions zsh-syntax-highlighting)
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
  ;;
esac
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Prevent ask passord GUI
[ -n "$SSH_CONNECTION" ] && unset SSH_ASKPASS
export GIT_ASKPASS=

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# tmux=" TERM=xterm-256color tmux"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# Optional configs
[ -f ~/.esther.sh ] && source ~/.esther.sh
[ -f ~/epics-env.sh ] && source ~/epics-env.sh
[ -f ~/.xilinx.sh ] && source ~/.xilinx.sh
[ -f ~/epicsenv.sh ] && source ~/epicsenv.sh
[ -f ~/platformio.sh ] && source ~/platformio.sh

#=======
# alias get_idf='. $HOME/esp/esp-idf/export.sh'
# alias get_platformio='. $HOME/PIO_Projects/export.sh'
# alias get_pyenv='. $HOME/python/pyenv-export.sh'
#PYENV
#https://medium.com/@raycent/managing-python-on-macos-the-clean-way-7673cab874f6
#alias brew='env PATH="${PATH//$(pyenv root)/shims:/}" brew'
# export PICO_SDK_PATH="$HOME/git/pico-sdk"
#if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#  eval "$(pyenv virtualenv-init -)"
#fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

