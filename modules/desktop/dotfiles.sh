AddPackage chezmoi # Manage your dotfiles across multiple machines
if command -v chezmoi >/dev/null 2>&1 && [ "$aconfmgr_action" = "apply" ]; then
    LogEnter 'Applying dotfiles...\n'
    [ -d "$HOME/.local/share/chezmoi" ] || chezmoi init LeGmask --ssh
    chezmoi update
    LogLeave
fi
