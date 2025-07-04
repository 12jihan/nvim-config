return {
  -- Enable the C++ language pack
  { import = "lazyvim.plugins.extras.lang.clangd" },

  -- Additional configurations
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    -- event = "LazyFile",
    -- dependencies = {
    --   "mason.nvim",
    --   { "williamboman/mason-lspconfig.nvim", config = function() end },
    -- },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                version = "LuaJIT",
              },
              workspace = {
                checkThirdParty = false,
                library = {
                  -- vim.env.VIMRUNTIME,
                  -- vim.fn.stdpath("config"),
                  "${3rd}/love2d/library",
                },
                -- Path to your love2d API definitions
                -- userThirdParty = { os.getenv("HOME") .. "/.local/share/LuaAddons/love2d/library" },
              },
              -- doc = {
              --   privateName = { "^_" },
              -- },
              -- codeLens = {
              --   enable = true,
              -- },
              -- options for vim.diagnostic.config()
              -- ---@type vim.diagnostic.Opts
              diagnostics = {
                globals = { "vim", "love" },
              },
              -- underline = true,
              -- update_in_insert = false,
              -- virtual_text = {
              --   spacing = 4,
              --   source = "if_many",
              --   prefix = "●",
              -- this will set set the prefix to a function that returns the diagnostics icon based on the severity
              -- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
              -- prefix = "icons",
              completion = {
                callSnippet = "Replace",
              },
              -- severity_sort = true,
              -- signs = {
              --   text = {
              --     [vim.diagnostic.severity.ERROR] = LazyVim.config.icons.diagnostics.Error,
              --     [vim.diagnostic.severity.WARN] = LazyVim.config.icons.diagnostics.Warn,
              --     [vim.diagnostic.severity.HINT] = LazyVim.config.icons.diagnostics.Hint,
              --     [vim.diagnostic.severity.INFO] = LazyVim.config.icons.diagnostics.Info,
              --   },
              -- },
            },
            -- telemetry = {
            --   enable = false,
            -- },
            -- hint = {
            --   enable = true,
            --   setType = false,
            --   paramType = true,
            -- },
          },
        },
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
          filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        },
      },
      -- ts_ls = {
      --   settings = {},
      --   filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
      --   inlayHints = {
      --     includeInlayParameterNameHints = "all",
      --     includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      --     includeInlayFunctionParameterTypeHints = true,
      --     includeInlayVariableTypeHints = true,
      --     includeInlayPropertyDeclarationTypeHints = true,
      --     includeInlayFunctionLikeReturnTypeHints = true,
      --     includeInlayEnumMemberValueHints = true,
      --   },
      --   suggest = {
      --     completeFunctionCalls = true,
      --   },
      --   udpateImportsOnFileMove = { enabled = "always" },
      --   setup = {
      --     tsserver = function(_, opts)
      --       require("typescript").setup({ server = opts })
      --       return true -- Prevent lspconfig from setting up tsserver again
      --     end,
      --   },
      -- },
    },
  },
}
