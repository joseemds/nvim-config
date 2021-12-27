(local packer (require :packer))

(packer.startup
    (fn [use]
        (use {1 :nvim-telescope/telescope.nvim
                :requires {1 :nvim-lua/plenary.nvim} })))