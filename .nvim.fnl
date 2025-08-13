;; Use `:set exrc` in Neovim to enable 
;; `Directory local Neovim configuration`

(set package.path (.. (vim.fn.getcwd) "/lua/?.lua;" (vim.fn.getcwd)
                      "/lua/?/init.lua;" package.path))
