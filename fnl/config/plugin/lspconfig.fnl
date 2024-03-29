(module config.plugin.lspconfig
        {autoload {nvim aniseed.nvim lsp lspconfig cmplsp cmp_nvim_lsp}})

;symbols to show for lsp diagnostics
(defn define-signs [prefix]
      (let [error (.. prefix :SignError)
            warn (.. prefix :SignWarn)
            info (.. prefix :SignInfo)
            hint (.. prefix :SignHint)]
        (vim.fn.sign_define error {:text :x :texthl error})
        (vim.fn.sign_define warn {:text "!" :texthl warn})
        (vim.fn.sign_define info {:text :i :texthl info})
        (vim.fn.sign_define hint {:text "?" :texthl hint})))

(if (= (nvim.fn.has :nvim-0.6) 1)
    (define-signs :Diagnostic)
    (define-signs :LspDiagnostics))

;server features
(let [handlers {:textDocument/publishDiagnostics (vim.lsp.with vim.lsp.diagnostic.on_publish_diagnostics
                                                               {:severity_sort true
                                                                :update_in_insert false
                                                                :underline true
                                                                :virtual_text false})
                :textDocument/hover (vim.lsp.with vim.lsp.handlers.hover
                                                  {:border :single})
                :textDocument/signatureHelp (vim.lsp.with vim.lsp.handlers.signature_help
                                                          {:border :single})}
      capabilities cmplsp.default_capabilites 
      on_attach (fn [client bufnr]
                  (do
                    (nvim.buf_set_keymap bufnr :n :gd
                                         "<Cmd>lua vim.lsp.buf.definition()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :K
                                         "<Cmd>lua vim.lsp.buf.hover()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>ld
                                         "<Cmd>lua vim.lsp.buf.declaration()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lt
                                         "<cmd>lua vim.lsp.buf.type_definition()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lh
                                         "<cmd>lua vim.lsp.buf.signature_help()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>ln
                                         "<cmd>lua vim.lsp.buf.rename()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>le
                                         "<cmd>lua vim.diagnostic.open_float()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lq
                                         "<cmd>lua vim.diagnostic.setloclist()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lf
                                         "<cmd>lua vim.lsp.buf.format {async = true}<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lj
                                         "<cmd>lua vim.diagnostic.goto_next()<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lk
                                         "<cmd>lua vim.diagnostic.goto_prev()<CR>"
                                         {:noremap true})
                    ;telescope
                    (nvim.buf_set_keymap bufnr :n :<leader>la
                                         "<Cmd>Lspsaga code_action<CR>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :v :<leader>la
                                         ":'<,'>:Telescope lsp_range_code_actions theme=cursor<cr>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lw
                                         ":lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>lr
                                         ":lua require('telescope.builtin').lsp_references()<cr>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :n :<leader>li
                                         ":lua require('telescope.builtin').lsp_implementations()<cr>"
                                         {:noremap true})
                    (nvim.buf_set_keymap bufnr :v :<leader>lf
                                         "<cmd>lua vim.lsp.buf.range_formatting()<CR>"
                                         {:noremap true}
                                         )))
        elixir_ls_path [(string.format "%s/dev/elixir/elixir-ls/language_server.sh" (vim.fn.expand "$HOME"))]
      ]
  (lsp.ocamllsp.setup {: on_attach : handlers : capabilities})
  (lsp.hls.setup {: on_attach : handlers : capabilities})
<<<<<<< HEAD
  (lsp.vls.setup {: on_attach : handlers : capabilities})
  (lsp.elixirls.setup {:cmd elixir_ls_path : on_attach : handlers : capabilites})
=======
  (lsp.tsserver.setup {: on_attach : handlers : capabilities})
  ; (lsp.vls.setup {: on_attach : handlers : capabilities})
  (lsp.elixirls.setup {: on_attach : handles : capabilities :cmd ["/home/josee/dev/elixir/elixir-ls/language_server.sh"]})
>>>>>>> 04b18f3 (add typescript server)
  (lsp.rust_analyzer.setup {: on_attach : handlers : capabilities}))
