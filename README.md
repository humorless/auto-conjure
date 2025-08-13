# auto-conjure
A Neovim plugin which enables Conjure to automatically switch when editing cljs files


## Setup

* Config `init.vim` with following content and then `:PlugInstall`  

```
" install with vim-plug
call plug#begin(stdpath('data') . '/plugged')
...
Plug 'humorless/auto-conjure'
...
call plug#end()

" register the necessary VimScript Function
function! AutoConjureSelect()
  let shadow_build_id = luaeval("require('auto-conjure').shadow_build_id()")
  let cmd='ConjureShadowSelect ' . shadow_build_id
  execute cmd
endfunction
command! AutoConjureSelect call AutoConjureSelect()
autocmd BufReadPost *.cljs :AutoConjureSelect
```

## Trouble shooting

When you are not sure if this plugin is successfully installed, try this command
in your Cljs project:

```
:lua print(require('auto-conjure').shadow_build_id())
```
