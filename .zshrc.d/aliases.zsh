# Aliases

# Aliases for git operations
alias develop="git checkout develop"
alias devBranch="git checkout develop; git checkout -b"
alias status="git status"
alias commit="git commit -a"
alias checkout="git checkout"
alias checkoutb="git checkout -b"
alias push-f="git push --force"
alias fetch="git fetch --all -p"
alias pull="git pull"
alias deleteBackup='git branch -D backup/"$(git symbolic-ref --short HEAD)"'
alias push='git push -vvv'
alias backup='git branch backup/"$(git symbolic-ref --short HEAD)"'
alias clean='git clean -fxd'
alias rebase='git fetch origin && git checkout develop && git pull origin develop && git checkout - && git rebase develop'

# Aliases for navigation
alias project='cd ~/Documents/Workspace/IOSVestiaire/'

# Aliases for other operations
alias openlink="xcrun simctl openurl booted"

echo -e "✅ Aliases imported"
