(module config.plugin.formatter
        {autoload {nvim aniseed.nvim formatter formatter}})

(local formatters {})

(fn formatters.fnlfmt []
  "The fennel formatter"
  {:exe :fnlfmt :args [(nvim.buf_get_name 0)] :stdin true})

(fn formatter.elixir []
  "Elixir formatter"
  {:exe :mix :args [:format (nvim.buf_get_name 0)] :stdin true}
  )


(formatter.setup {:filetype {:fennel [formatters.fnlfmt]}}
                 {:filetype {:eelixir [formatters.elixir]}}
                 {:filetype {:elixir [formatters.elixir]}}
                 )

(nvim.set_keymap :n :<leader>F ":Format<cr>" {:noremap true})

