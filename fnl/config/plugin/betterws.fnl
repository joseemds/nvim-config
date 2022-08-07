(module config.plugin.betterws
  {autoload {nvim aniseed.nvim
             }})

(set nvim.g.strip_whitespace_on_save 1)

(nvim.set_keymap :n "<leader>cw" "<Cmd> :StripWhitespace <CR>" {:noremap true})
(nvim.set_keymap :n "<leader>cc" "<Cmd> :StripWhitespaceOnChangedLines <CR>" {:noremap true})


