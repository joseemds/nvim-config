(module config.mappings
  {autoload {nvim aniseed.nvim
             terminal toggleterm.terminal
             }}
  )


(fn cmd [cmd]
  (string.format "<Cmd>%s<CR>" cmd)
  )

(nvim.set_keymap :n :<Tab> (cmd ":bn") {:noremap true})
(nvim.set_keymap :n :<S-Tab> (cmd ":bp") {:noremap true})
