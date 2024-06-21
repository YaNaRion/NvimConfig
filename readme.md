This is a neovim config file
It is base on NvChad distro

If you had already a neovim config before this one, run there command to clean it up

# Linux / Macos (unix)
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

# Flatpak (linux)
rm -rf ~/.var/app/io.neovim.nvim/config/nvim
rm -rf ~/.var/app/io.neovim.nvim/data/nvim
rm -rf ~/.var/app/io.neovim.nvim/.local/state/nvim

# Windows CMD
rd -r ~\AppData\Local\nvim
rd -r ~\AppData\Local\nvim-data

# Window PowerShell
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data

This repo need to be place in the ~/.config/nvim/ directory.

You will need to run :MasonInstallAll to install the LSP binery for the selected LSP for the mason pluging in ./lua/custom/configs/overrides.lua

To update all plugins via Lazy(plugin manager) run :Lazy sync
