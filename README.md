# Dotfiles

User configuration managed with GNU Stow.

## Packages

- `bash` -> `~/.bashrc`
- `ghostty` -> `~/.config/ghostty`
- `hypr` -> `~/.config/hypr`
- `mako` -> `~/.config/mako`
- `nvim` -> `~/.config/nvim`
- `yazi` -> `~/.config/yazi`

## Apply

From this directory:

```bash
stow -t "$HOME" bash ghostty hypr mako nvim yazi
```

To relink after changes:

```bash
stow -R -t "$HOME" bash ghostty hypr mako nvim yazi
```

## Notes

- These are user configs only.
- Omarchy source/default files under `~/.local/share/omarchy` are intentionally not tracked.
- Mako was captured as the current effective config rather than an Omarchy theme symlink.
- Machine-specific Hyprland display settings in `hypr/.config/hypr/monitors.conf` are intentionally ignored for now.
