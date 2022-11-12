# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.pre.bash"
# Starship config. Learn more at https://github.com/starship/starship
eval "$(starship init bash)"

# fzf config. Learn more at https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source /Users/hyperzsb/.config/broot/launcher/bash/br

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && builtin source "$HOME/.fig/shell/bashrc.post.bash"
