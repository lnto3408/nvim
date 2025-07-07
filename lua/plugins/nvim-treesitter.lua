-- return {
-- 	"nvim-treesitter/nvim-treesitter",
--   dependencies = {
--     "smartpde/tree-sitter-cpp-google",
--   },
--   build = ":TSUpdate", -- Automatically update parsers after installing/updating plugin
-- 	config = function()
--     require("tree-sitter-cpp-google").setup()
-- 		local configs = require("nvim-treesitter.configs")
--
-- 		configs.setup({
-- 			-- List of parsers to ensure are installed
-- 			ensure_installed = {
-- 				"c",
-- 				"lua",
-- 				"vim",
-- 				"vimdoc",
-- 				-- "cpp",
-- 				"go",
-- 				"gomod",
-- 				"json",
-- 				"xml",
-- 				"nginx",
-- 				"python",
-- 				"javascript",
-- 				"html",
-- 				"bash",
-- 				"regex",
-- 			},
-- 			sync_install = false, -- Install parsers asynchronously
-- 			auto_install = true, -- Automatically install missing parsers when entering buffer
--
-- 			highlight = {
-- 				enable = true, -- Enable highlighting
--         disable = {"cpp"},
-- 				additional_vim_regex_highlighting = false, -- Disable vim regex highlighting
-- 			},
-- 			indent = {
-- 				enable = true, -- Enable Treesitter-based indentation
-- 			},
-- 			incremental_selection = { -- Optional: Enable incremental selection
-- 				enable = true,
-- 				keymaps = {
-- 					init_selection = "gnn",
-- 					node_incremental = "grn",
-- 					scope_incremental = "grc",
-- 					node_decremental = "grm",
-- 				},
-- 			},
-- 			textobjects = { -- Optional: Enable textobjects
-- 				select = {
-- 					enable = true,
-- 					lookahead = true, -- Automatically jump forward to matching text object
-- 					keymaps = {
-- 						["af"] = "@function.outer",
-- 						["if"] = "@function.inner",
-- 						["ac"] = "@class.outer",
-- 						["ic"] = "@class.inner",
-- 					},
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
--
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "smartpde/tree-sitter-cpp-google",
  },
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "cpp",
        -- "cpp-google",
        "go",
        "gomod",
        "json",
        "xml",
        "nginx",
        "python",
        "javascript",
        "html",
        "bash",
        "regex",
      },
      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
      },
    })

    require("tree-sitter-cpp-google").setup()
  end,
}
