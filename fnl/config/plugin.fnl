(module config.plugin
  {autoload {a aniseed.core
             packer packer}})

(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :config.plugin. name))]
    (when (not ok?)
      (print (.. "config error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well." (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name)))))))
  nil)

;plugins managed by packer

(use
  ;plugin Manager
  :wbthomason/packer.nvim {}
  ;nvim config and plugins in Fennel
  :Olical/aniseed {:branch :develop}
  ;clojure
  :Olical/conjure {:branch :master :mod :conjure}
  ;file searching
  :nvim-telescope/telescope.nvim {:requires [:nvim-lua/popup.nvim
                                             :nvim-lua/plenary.nvim]
                                  :mod :telescope}
  ;parsing system
  :nvim-treesitter/nvim-treesitter {:run ":TSUpdate"
                                    :mod :treesitter}

  :nvim-treesitter/playground {}
  ;lsp
  :neovim/nvim-lspconfig {:mod :lspconfig}
  ;autocomplete
  :hrsh7th/nvim-cmp {:requires [:hrsh7th/cmp-buffer
                                :hrsh7th/cmp-nvim-lsp
                                :PaterJason/cmp-conjure]
                     :mod :cmp}
  ;theme
  :folke/tokyonight.nvim {}
  :sheerun/vim-polyglot {}

  ; useful
  :tamago324/lir.nvim { :mod :lir }
  :phaazon/hop.nvim { :mod :hop }
  :machakann/vim-sandwich {}
  :nvim-treesitter/nvim-treesitter-textobjects {}
  :mhartington/formatter.nvim { :mod :formatter}
  :terrortylor/nvim-comment { :mod :comment }
  :sindrets/diffview.nvim { :mod :diffview }
  :akinsho/toggleterm.nvim { :tag "v1.*"
                              :mod :toggleterm
                            }
  :iamcco/markdown-preview.nvim {
                                 :run "cd app && npm install"
                                 :setup (fn [] (set vim.g.mkdp_filetypes [:markdown]))
                                 :ft [:markdown]
                                 }
  :windwp/nvim-autopairs { :mod :autopairs }
  :ntpeters/vim-better-whitespace { :mod :betterws }
  :mfussenegger/nvim-dap { :mod :dap }
  :glepnir/lspsaga.nvim {}
  :rafamadriz/friendly-snippets {}
  :L3MON4D3/LuaSnip {}
  :saadparwaiz1/cmp_luasnip { :mod :luasnip  }
  :shatur/neovim-ayu {}
  :sainnhe/everforest {}
  :nvim-telescope/telescope-fzf-native.nvim {
                                             :run "make"
                                             }
  :tpope/vim-surround {}
  :junegunn/goyo.vim {}
  :folke/zen-mode.nvim { :mod :zen}
  )
