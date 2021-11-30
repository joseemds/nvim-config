local lspconfig = require('lspconfig')

local home = vim.fn.expand("$HOME")

local on_attach = function(client)
  print("'" .. client.name .. "' server attached")
end

local sumneko_root_path= home.."/lsp/lua-language-server"
local sumneko_binary = sumneko_root_path.."/bin/Linux/lua-language-server"


lspconfig.ocamllsp.setup{
  file_types={"ocaml", "reason","dune"},
  root_dir=lspconfig.util.root_pattern("*.opam","package.json","esy.json"),
  on_attach = on_attach
}


lspconfig.tsserver.setup{
	on_attach = on_attach
}

lspconfig.elixirls.setup{
	cmd = {home.."/lsp/elixir-language-server/language_server.sh"},
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

}

lspconfig.clangd.setup{
  on_attach = on_attach
}

lspconfig.fsautocomplete.setup{
  on_attach=on_attach
}


lspconfig.sumneko_lua.setup{
	cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
