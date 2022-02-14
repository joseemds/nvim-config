(module config.plugin.treesitter
        {autoload {treesitter nvim-treesitter.configs
                   parsers nvim-treesitter.parsers}})

(treesitter.setup {:highlight {:enable true}
                   :indent {:enable true}
                   :textobjects {:select {:enable true
                                          :lookahead true
                                          :keymaps {:af "@function.outer"
                                                    :if "@function.inner"}}
                                 :swap {:enable true
                                        :swap_next {:<leader>a "@parameter.inner"}
                                        :swap_previous {:<leader>A "@parameter.inner"}}}})


(set parsers.filetype_to_parsername.reason :ocaml)
