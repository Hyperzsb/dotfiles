# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && . "$HOME/.fig/shell/bashrc.pre.bash"

# Starship config. Learn more at https://github.com/starship/starship
eval "$(starship init bash)"

# fzf config. Learn more at https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && . "$HOME/.fig/shell/bashrc.post.bash"
