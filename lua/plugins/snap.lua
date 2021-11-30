local snap = require'snap'

local home = vim.fn.expand("$HOME")

local file = snap.config.file:with {reverse=true}

local search_in_config = function ()
  snap.run {
  producer = snap.get'consumer.fzf'(
      snap.get'producer.ripgrep.file'.args({}, home.."/.config/nvim")
  ),
  select = snap.get'select.file'.select,
  multiselect = snap.get'select.file'.multiselect,
  views = {snap.get'preview.file'}
}


end


local grep = function()
  snap.run {
  producer = snap.get'producer.ripgrep.vimgrep',
  steps = {{
    consumer = snap.get'consumer.fzf',
    config = {prompt = "FZF>"}
  }},
  select = snap.get'select.file'.select,
  multiselect = snap.get'select.file'.multiselect,
  views = {snap.get'preview.file'}
}

end


snap.maps {
  {"<C-p>", snap.config.file {producer = "ripgrep.file"}},
  {"<Leader>fb", file {producer = "vim.buffer"}},
  {"<Leader>fo", file {producer = "vim.oldfile"}},
  {"<Leader>fg", grep},
  {"<Leader>fc", search_in_config}
}

