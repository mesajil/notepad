# Aliases in Bash

Boost productivity, minimize errors, and personalize your command-line experience with ease.

## Foundations

The `~/.bashrc` file is a script that Bash runs whenever it is started interactively.

## Guide to create an alias

### Step 1. Edit the `~/.bashrc` file

- **Open `~/.bashrc` file**: You can use a text editor like nano, vi, or any text editor of your choice.

  ```bash
  code ~/.bashrc
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

### Bonus: Test your alias

- **Test the alias**: Try using the `g` alias:

  ```bash
  g --version
  ```

- This should output the same result as `git --version`.

## My personal list of aliases

```bash
# common

alias ll='ls -l'
alias ..="cd .."

# Git

alias g=git
alias ga="git add"
alias gb="git branch"
alias gco="git checkout"
alias gci="git commit"
alias gd="git diff"
alias gdca="git diff --cached"
alias gds="git diff --staged"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"
alias gst="git status"
alias gss="git status --short"
```
