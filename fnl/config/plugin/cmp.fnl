(module config.plugin.cmp
  {autoload {nvim aniseed.nvim
             cmp cmp
             luasnip luasnip
             }})

(def- cmp-srcs
  [{:name :nvim_lsp}
   {:name :luasnip}
   ])

;; Setup cmp with desired settings
(cmp.setup {
            :snippet {:expand (fn [args] (luasnip.expand args.body))}
            :sources (cmp.config.sources cmp-srcs)
            :mapping (cmp.mapping.preset.insert
                      {
                      :<C-b> (cmp.mapping.scroll_docs (- 4))
                      :<C-f> (cmp.mapping.scroll_docs 4)
                      :<C-Space> (cmp.mapping.complete)
                      :<C-e> (cmp.mapping.close)
                      :<C-y> (cmp.mapping.confirm {:select true})})
            })


