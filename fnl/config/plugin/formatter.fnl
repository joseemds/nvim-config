(module config.plugin.formatter
        {autoload {nvim aniseed.nvim formatter formatter}})

(local formatters {})

(fn formatters.fnlfmt []
  "The fennel formatter"
  {:exe :fnlfmt :args [(nvim.buf_get_name 0)] :stdin true})

(formatter.setup {:filetype {:fennel [formatters.fnlfmt]}})

(nvim.set_keymap :n :<leader>F ":Format<cr>" {:noremap true})

