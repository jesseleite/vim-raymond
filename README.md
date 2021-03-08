# Vim Raymond 🔫

A Vim / Neovim wrapper for [Ray](https://myray.app/) by [Spatie](https://spatie.be/) that everyone will love!

## Requirements

Requires [ray-cli](https://github.com/permafrost-dev/ray-cli) to be installed, with the `ray` executable accessible at your runtime path.

```bash
composer global require permafrost-dev/ray-cli
```

## Installation

Install using [vim-plug](https://github.com/junegunn/vim-plug) or similar:

```vim
Plug 'jesseleite/vim-raymond', {'for': ['vim', 'lua']}
```

## Usage

To dump to Ray, just call the global `Ray()` function. You may also pass [ray-cli flags](https://github.com/permafrost-dev/ray-cli#available-options) into `Ray()` as a second argument.

### Dump to Ray from your `.vim` files:

```vim
call Ray(data)
call Ray(data, '--green --large')
```

### Dump to Ray from your `.lua` files in Neovim:

```lua
Ray(data)
Ray(data, '--green --large')
```
