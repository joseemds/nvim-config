local lspconfig = require('lspconfig')

local on_attach = function(client)
  print("'" .. client.name .. "' server attached")
end


lspconfig.ocamllsp.setup{
  file_types={"ocaml", "reason","dune"},
  root_dir=lspconfig.util.root_pattern("*.opam","package.json","esy.json"),
  on_attach = on_attach
}


lspconfig.tsserver.setup{
	on_attach = on_attach
}
