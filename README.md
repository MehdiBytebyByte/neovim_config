# Neovim Configuration

This is my personal Neovim configuration. I built it with a focus on improving my productivity and making my Neovim experience more comfortable. The setup includes various plugins and custom tweaks to suit my workflow.

## Credits

The majority of this configuration was based on the excellent work of **TypeCraft**, a YouTuber who has a great series on setting up a Neovim config. You can follow along with the playlist here:  
[TypeCraft's Neovim Setup Playlist](https://youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&si=LFI5biJ8jBTquxtO)

A big thanks to TypeCraft for making the playlist and sharing his knowledge with the community!

### Customization

While I followed the general structure of TypeCraft's setup, I made a number of tweaks and adjustments to better fit my own workflow and preferences. These include:

- Customizing the key bindings
- Adjusting some plugin configurations
- Tweaking general Vim options for better ergonomics

Feel free to explore the files and modify them as needed to suit your own preferences.

## Structure

Here is the breakdown of the configuration files and directories:

- `nvim/lua/plugins.lua`: The main file for plugin setup.
- `nvim/lua/vim-options.lua`: Contains general Vim options and settings.
- `nvim/lua/plugins/`: Directory where individual plugin configurations are stored. Here's a list of the plugins I use:

  - `alpha.lua`: Startup screen for Neovim.
  - `comment.lua`: Plugin for easy commenting of code.
  - `lsp-config.lua`: LSP setup for autocompletion, diagnostics, etc.
  - `neo-tree.lua`: File explorer for Neovim.
  - `telescope.lua`: Fuzzy finder for files, buffers, and more.
  - `catppuccin.lua`: Color scheme for a pleasant Neovim theme.
  - `completions.lua`: Autocompletion settings.
  - `lualine.lua`: Status line setup.
  - `none-ls.lua`: Setup for integrating external tools like `black`, `flake8`, etc.
  - `treesitter.lua`: Configuration for Tree-sitter parsing.

## Installation

To use this configuration, follow these steps:

1. Clone this repository into your `~/.config/nvim` directory:
   ```sh
