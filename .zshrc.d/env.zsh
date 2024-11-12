# Environment variables

export PATH="/opt/homebrew/bin:$PATH"
eval "$(rbenv init - zsh)"
. ~/.bashrc

# Homebrew on the M1, where things install to /opt/homebrew
export PATH=/opt/homebrew/bin:$PATH

echo -e "✅ Env file imported"
