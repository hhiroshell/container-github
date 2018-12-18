#!/bin/sh

mkdir -p "$HOME/.config"
echo "https://$WERCKER_GITHUB_TOKEN:@github.com" > "$HOME/.config/git-credential"
echo "github.com:" > "$HOME/.config/hub"
echo "- oauth_token: $WERCKER_GITHUB_TOKEN" >> "$HOME/.config/hub"
echo "  user: $WERCKER_GITHUB_USER" >> "$HOME/.config/hub"
git config --global user.name "$WERCKER_GITHUB_USER"
git config --global user.email "$WERCKER_GITHUB_USER@users.noreply.github.com"
git config --global core.autocrlf "input"
git config --global hub.protocol "https"
git config --global credential.helper "store --file=$HOME/.config/git-credential"

hub $WERCKER_GITHUB_COMMAND