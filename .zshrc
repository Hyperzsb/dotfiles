# Zsh profiling module
#zmodload zsh/zprof

# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/hyperzsb/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cgit colored-man-pages zsh-autosuggestions zsh-syntax-highlighting wakatime)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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

##########################
# Start of Customization #
##########################

#####
####
### Environment variables
##
#

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

PLAYGROUND="$HOME/Private/playground"
GITHUB_PROJECTS="$PLAYGROUND/github-projects"

# /usr/local/bin path
export PATH="/usr/local/bin:$PATH"

# /usr/local/sbin path
export PATH="/usr/local/sbin:$PATH"

# Go bin path
export PATH="$HOME/go/bin:$PATH"

# Ruby 3.0.0 bin path
export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

# Python unversioned bin path. macOS has removed Python 2.*
#export PATH="/usr/local/opt/python@3.12/libexec/bin:$PATH"

# Hyperledger Fabric Sample bin path
#export PATH="$PLAYGROUND/hyperledger/fabric/fabric-samples/bin:$PATH"

# Unlock music command line tool bin path
#export PATH="$GITHUB_PROJECTS/unlock-music-cli/cmd/um:$PATH"

# Spin command line bin path
#export PATH="$GITHUB_PROJECTS/Spin/Bin:$PATH"
#alias ispin="wish $GITHUB_PROJECTS/Spin/optional_gui/ispin.tcl"

# Tcl-tk used by iSpin command lin bin path
#export PATH="/usr/local/opt/tcl-tk/bin:$PATH"

# HTTP proxy setting
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

#####
####
### Plugins and Tools
##
#

# ag (The Silver Searcher)
# - A code search tool for general purposes
# - Learn more at https://github.com/ggreer/the_silver_searcher

# Atuin
# - Atuin replaces your existing shell history with a SQLite database, and records additional context for your commands.
# - Learn more at https://github.com/ellie/atuin
#export ATUIN_NOBIND="true"
#eval "$(atuin init zsh)"
#bindkey '^r' _atuin_search_widget
#alias his="atuin search -i"

# autojump
# - A cd command that learns - easily navigate directories from the command line
# - Learn more at https://github.com/wting/autojump
[[ -s /Users/hyperzsb/.autojump/etc/profile.d/autojump.sh ]] && source /Users/hyperzsb/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# bat
# - A `cat` command clone with syntax highlighting and Git integration
# - Learn more at https://github.com/sharkdp/bat

# bottom
# - Yet another cross-platform graphical process/system monitor
# - Learn more at https://github.com/ClementTsang/bottom

# broot
# - A better way to navigate directories, beyond `tree`
# - Learn more at https://github.com/Canop/broot
source /Users/hyperzsb/.config/broot/launcher/bash/br

# cheat
# - An interactive cheatsheet tool on the command-line
# - Learn more at https://github.com/cheat/cheat

# delta
# - A syntax-highlighting pager for git, diff, and grep output
# - Learn more at https://github.com/dandavison/delta

# dust
# - A more intuitive version of `du` in rust
# - Learn more at https://github.com/bootandy/dust

# exa
# - A colorful alternative of the outstanding `ls` command
# - Learn more at https://github.com/ogham/exa

# eza
# - A modern, maintained replacement for ls
# - Learn more at https://github.com/eza-community/eza

# fig
# - An auto-completion tool for various terminals
# - Learn more at https://github.com/withfig/autocomplete

# fzf
# - A command-line fuzzy finder
# - Learn more at https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# g
# - Simple go version manager
# - Learn more at https://github.com/stefanmaric/g
export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
alias goenv="$GOPATH/bin/g"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

# gitui
# - GitUI provides you with the comfort of a git GUI but right in your terminal
# - Learn more at https://github.com/extrawurst/gitui

# gping
# - A graphic alternative of the `ping` command
# - Learn more at https://github.com/orf/gping

# hub
# - A command-line tool that makes git easier to use with GitHub
# - Learn more at https://github.com/github/hub

# hyperfine
# - A command-line benchmarking tool
# - Learn more at https://github.com/sharkdp/hyperfine

# jq
# - A command-line JSON processor
# - Learn more at https://github.com/stedolan/jq

# neofetch
# - A command-line system information tool
# - Learn more at https://github.com/dylanaraps/neofetch

# nvm
# - Node Version Manager - POSIX-compliant bash script to manage multiple active node.js versions
# - Learn more at https://github.com/nvm-sh/nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# procs
# - A modern replacement for the `ps` command
# - Learn more at https://github.com/dalance/procs

# pyenv
# - Simple Python version management
# - Learn more at https://github.com/pyenv/pyenv#getting-pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# pygmentize
# - An generic syntax highlighter written in Python. Used as a colorful `cat` command
# - Learn more at https://github.com/pygments/pygments

# rbenv
# - Manage your app's Ruby environment
# - Learn more at https://github.com/rbenv/rbenv
eval "$(rbenv init - zsh)"

# terminalizer
# - Record your terminal and generate animated gif images or share a web player
# - Learn more at https://github.com/faressoft/terminalizer

# thefuct
# - Magnificent app which corrects your previous console command
# - Learn more at https://github.com/nvbn/thefuck
#eval $(thefuck --alias)

# The Silver Searcher
# A code-searching tool similar to ack, but faster
# Learn more at https://github.com/ggreer/the_silver_searcher

# tokei
# - Tokei is a program that displays statistics about your code
# - Learn more at https://github.com/XAMPPRocky/tokei

# yq
# - A portable command-line YAML, JSON, XML, CSV and properties processor, just like jq
# - Learn more at https://github.com/mikefarah/yq

#####
####
### Alias
##
#

alias ccat="pygmentize -g -O style=dracula"
alias ls="eza -aF"
alias la="eza -aglF --header --group-directories-first"
alias ld="la -a1FD"
alias lg="la --git"

#####
####
### History
##
#

HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=50000

# Immediately append to history file:
setopt INC_APPEND_HISTORY

# Record timestamp in history:
setopt EXTENDED_HISTORY

# Expire duplicate entries first when trimming history:
setopt HIST_EXPIRE_DUPS_FIRST

# Dont record an entry that was just recorded again:
setopt HIST_IGNORE_DUPS

# Delete old recorded entry if new entry is a duplicate:
setopt HIST_IGNORE_ALL_DUPS

# Do not display a line previously found:
setopt HIST_FIND_NO_DUPS

# Dont record an entry starting with a space:
setopt HIST_IGNORE_SPACE

# Dont write duplicate entries in the history file:
setopt HIST_SAVE_NO_DUPS

# Share history between all sessions:
setopt SHARE_HISTORY

# Execute commands using history (e.g.: using !$) immediatel:
unsetopt HIST_VERIFY

#####
####
### Miscellaneous Settings
##
#

# GPG setting. Learn more at https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key
export GPG_TTY=$(tty)

# iTerm2 shell integration setting. Learn more at https://github.com/browsh-org/browsh
#source ~/.iterm2_shell_integration.zsh

# Jekyll build setting
export SDKROOT=$(xcrun --show-sdk-path)

#####
####
### Remove duplicate entries in PATH
##
#

# Snippts from https://www.linuxjournal.com/content/removing-duplicate-path-entries
# Use Perl
#export PATH=$(perl -E 'chomp($_=<>);say join":",grep{$_&&!$_{$_}++}split/:/' <<<$PATH)
# Or use awk
export PATH=$(echo $PATH | awk -v RS=: '!($0 in a) {a[$0]; printf("%s%s", col, $0); col=":"; }')

########################
# End of customization #
########################

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

# Zsh profiling module
#zprof
