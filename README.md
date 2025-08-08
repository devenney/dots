# dots

## Prerequisites

1. Configure [GitHub SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).
1. Configure [GitHub GPG](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key).


## Bootstrap

```
# install chezmoi
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
export PATH="$HOME/.local/bin:$PATH"

# oneshot configuration 
chezmoi init devenney/dots --apply

# set zsh as default shell
chsh -s "$(which zsh)"
```
