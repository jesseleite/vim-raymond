" Arguments that do not require data param:
let s:lonely_args = [
  \ '--clear-all',
  \ '--clear',
  \ '-C',
  \ '--screen',
  \ '-s',
  \ ]

" Dump to Ray from your .vim files:
function! Ray(dump, ...)
  let ray = "!ray '" . json_encode(a:dump) . "' --json"
  if a:0
    let ray = ray . ' ' . a:1
  elseif index(s:lonely_args, a:dump) >= 0
    let ray = "! ray " . a:dump
  endif
  silent execute ray
endfunction

" Dump to Ray from your .lua files in Neovim:
if has('nvim')
lua << EOF
function Ray(...)
    vim.fn['Ray'](...)
end
EOF
endif
