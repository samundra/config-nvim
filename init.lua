require("config.lazy")
require("config.keymaps")
require('lualine').setup({
    options = { theme  = "onedark" },
})
require('fzf-lua').setup({'fzf-vim'})
--require("lazy").setup({})

require('config.sane_defaults')
require('nvim-web-devicons')

-- Configure Rust Analyzer
local lspconfig = require('lspconfig')
-- local on_attach = function(client)
--   require'completion'.on_attach(client)
-- end
-- Enable some servers
local servers = { 'rust_analyzer' }
local capabilities = require("cmp_nvim_lsp").default_capabilities()

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    -- on_attach = my_custom_on_attach,
    capabilities = capabilities,
  }
end

lspconfig.rust_analyzer.setup({
  --on_attach = on_attach,
  settings = {
    ["rust-analyzer"] = {
      imports = {
	granularity = { 
	  group = "module",
	},
	prefix = "self",
      },
      cargo = {
	buildScripts = {
	  enable = true,
	},
      },
      procMacro = {
	enable = true
      },
    }
  }
});

require('cmp').setup({})


-- Init FZF
vim.keymap.set("n", "<c-P>", require('fzf-lua').files, { desc = "Fzf Files" })


require'nvim-treesitter.configs'.setup {
  -- A directory to install the parsers into.
  -- If this is excluded or nil parsers are installed
  -- to either the package dir, or the "site" dir.
  -- If a custom path is used (not nil) it must be added to the runtimepath.
  -- parser_install_dir = "/some/path/to/store/parsers",

  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "c" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

