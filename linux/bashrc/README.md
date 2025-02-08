# Aliases in Bash

Boost productivity, minimize errors, and personalize your command-line experience with ease.

## Foundations

The `~/.bashrc` file is a script that Bash runs whenever it is started interactively.

## Guide to create an alias

### Step 1. Open the `~/.bashrc` file

- **Open `~/.bashrc` file**: You can use a text editor like nano, vi, or any text editor of your choice.

  ```bash
  code ~/.bashrc
  ```

- **Open `~/.bash_aliases` file**:

  ```bash
  code ~/.bash_aliases
  ```

### Step 2. Add your alias

- **Add your alias**: To create an alias for `git` as `g`, add the following line to your `.bashrc` file:

  ```bash
  alias g='git'
  ```

### Step 3: Make the Changes Effective

- **Reload `.bashrc`**: After saving the changes, you need to reload the `.bashrc` file to apply the changes without restarting the terminal.

  ```bash
  source ~/.bashrc
  ```

- This command tells Bash to re-read the `.bashrc` file, which incorporates the changes immediately.

### Test your alias

- **Test the alias**: Try using the `g` alias:

  ```bash
  g --version
  ```

- This should output the same result as `git --version`.

### List all Aliases

```bash
alias
```

## Basic aliases

```bash
# Basics

alias ll='ls -l'
alias la='ls -la'
alias ..="cd .."

# Python

alias py=python3

# Git

alias g=git
alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gd="git diff"
alias gdca="git diff --cached"
alias gds="git diff --staged"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
alias gss="git status --short"
alias gg="git log"
alias ggol="git log --pretty='%C(auto)%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'"
alias gc="git commit --verbose"
alias gc!="git commit --verbose --amend"

# Docker

alias dk=docker
alias dkc="docker-compose"

```
