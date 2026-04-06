# Default recipe - lists all available recipes
[private]
default:
    @just --list

# Start Dev Instance
start:
    bun start

# Test build locally
test:
    bun run serve -- --build

# Deploy to GH-Pages
deploy:
    USE_SSH=true bun run deploy

# Create new branch
branch name="":
    #!/usr/bin/env bash
    cd {{invocation_directory()}}
    if [ -z "{{name}}" ]; then
        echo "Error: You must provide a branch name."
        echo "Usage: just branch <feature-name>"
        exit 1
    fi
    git branch "{{name}}"
    echo "Created branch: {{name}}"

# Create and switch to a new git branch
feature name="":
    #!/usr/bin/env bash
    cd {{invocation_directory()}}
    if [ -z "{{name}}" ]; then
        echo "Error: Branch name is required."
        echo "Usage: just feature <branch-name>"
        exit 1
    fi
    git checkout -b "{{name}}"

# Merge a branch into main and push
merge branch_name="":
    #!/usr/bin/env bash
    cd {{invocation_directory()}}
    if [ -z "{{branch_name}}" ]; then
        echo "Error: Specify the branch to merge into main."
        echo "Usage: just merge <feature-branch>"
        exit 1
    fi

    # Determine default branch (handles main or master)
    DEFAULT_BRANCH=$(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')

    echo "Merging {{branch_name}} into $DEFAULT_BRANCH..."

    git checkout $DEFAULT_BRANCH
    git pull origin $DEFAULT_BRANCH
    git merge "{{branch_name}}"

    echo "--- Merge complete. Push changes? (y/n) ---"
    read -r response
    if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]; then
        git push origin $DEFAULT_BRANCH
    fi
