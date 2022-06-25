(module config.plugin.lir
  {autoload {nvim aniseed.nvim
             lir lir
             actions lir.actions
             clip  lir.clipboard.actions
             mark lir.mark.actions
             }})

(lir.setup {
            :show_hidden_files :false
            :mappings {
                       :l actions.edit
                       :r actions.rename
                       :D actions.delete
                       :<C-s> actions.split
                       :<C-v> actions.vsplit
                       :<C-t> actions.tabedit

                       :q actions.quit
                       :<C-c> actions.quit


                       :h actions.up
                       :L actions.cd

                       :Y actions.yank_path

                       :n actions.newfile
                       :N actions.mkdir
                       }

            })


(nvim.set_keymap :n "-" ":edit %:h<CR>" {:noremap true})
