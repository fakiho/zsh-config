# Functions
# Functions for git operations

function pullHard() {
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        git fetch --all
        if [ "$1" != "" ]; then
            git branch backup/"$1"
            git reset --hard origin/"$1"
        else 
            if read -q 'Reply? Press Y/y if you want to pull hard: "$(git symbolic-ref --short HEAD)"? '; then
                echo "\n"
                git branch backup/"$(git symbolic-ref --short HEAD)"
                git reset --hard origin/"$(git symbolic-ref --short HEAD)"
            fi 
        fi
    else
        echo "Not a git repository"
    fi
}

function delete_merged_branches() {
    if [[ -z $1 ]]; then
        echo "Usage: delete_merged_branches <folder_name> [<branch_name>...]"
        return 1
    fi
    local folder=$1
    shift
    local exclude_branches=("master" "develop" "$@")
    git checkout develop
    local merged_branches=$(git for-each-ref --format='%(refname:short)' refs/heads/"$folder"/ --merged)
    for branch in "${exclude_branches[@]}"; do
        merged_branches=$(echo "$merged_branches" | grep -Ev "^$folder/$branch$")
    done
    if [[ -n $merged_branches ]]; then
        echo "The following branches will be deleted:"
        echo "$merged_branches"
        echo -n "Are you sure you want to delete these branches? (y/n) "
        read confirm
        if [[ $confirm =~ ^[Yy]$ ]]; then
            echo "Deleting the specified branches..."
            echo "$merged_branches" | xargs git branch -D
            echo "Deleted the specified branches."
        else
            echo "Aborted branch deletion."
        fi
    else
        echo "No branches found to delete."
    fi
}

function forcePull() {
    if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        local branch=$(git symbolic-ref --short HEAD)
        git fetch origin
        git reset --hard origin/$branch
    else
        echo "Not a git repository"
    fi
}

function openx() {
    cd ~/Documents/Workspace/IOSVestiaire/Project && xed . && cd ..
}

echo -e "✅ Functions imported" 
