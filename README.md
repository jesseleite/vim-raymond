# Vim Raymond 🔫

A Vim / Neovim wrapper for [Ray](https://myray.app/) by [Spatie](https://spatie.be/) that everybody will love!

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

Dump to Ray from your `.vim` files:

```vim
call Ray(data)
```

Dump to Ray from your `.lua` files in Neovim:

```lua
Ray(data)
```

You may also pass [ray-cli flags](https://github.com/permafrost-dev/ray-cli#available-options) into `Ray()` as a second argument:

```lua
Ray(data, '--green --large')
```

Clearing screen does not require a data argument:

```lua
Ray('--clear')
```

## Example

```lua
Ray('--clear')
Ray(vim_users, '--green')
Ray(current_feelings, '--purple')
Ray(first_name, '--blue')
```

![](example.png)

![](https://media.giphy.com/media/QBozhcw84UW0sNSUkw/giphy.gif)
