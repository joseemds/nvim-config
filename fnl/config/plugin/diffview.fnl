(module config.plugin.diffview
  {autoload {nvim aniseed.nvim}})


(nvim.set_keymap :n "<leader>d" "<Cmd>:DiffViewOpen<CR>" {:noremap true})
