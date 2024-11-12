export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Source additional configuration files.
for config_file in $HOME/.zshrc.d/*.zsh; do
  [ -f $config_file ] && source $config_file
done
