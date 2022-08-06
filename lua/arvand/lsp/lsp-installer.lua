local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
	"rust_analyzer",
	"taplo",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("arvand.lsp.handlers").on_attach,
		capabilities = require("arvand.lsp.handlers").capabilities,
	}

	if server == "sumneko_lua" then
		local sumneko_opts = require("arvand.lsp.settings.sumneko_lua")
		opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
	end

	if server == "pyright" then
		local pyright_opts = require("arvand.lsp.settings.pyright")
		opts = vim.tbl_deep_extend("force", pyright_opts, opts)
	end

        if server == "rust_analyzer" then
            print("Hi Arvand")
            local keymap = vim.keymap.set
            local key_opts = { silent = true }

            keymap("n", "<leader>th", "<cmd>RustSetInlayHints<Cr>", key_opts)
            keymap("n", "<leader>thd", "<cmd>RustDisableInlayHints<Cr>", key_opts)
            keymap("n", "<leader>tu", "<cmd>RustToggleInlayHints<Cr>", key_opts)
            keymap("n", "<leader>tr", "<cmd>RustRunnables<Cr>", key_opts)
            keymap("n", "<leader>tem", "<cmd>RustExpandMacro<Cr>", key_opts)
            keymap("n", "<leader>toc", "<cmd>RustOpenCargo<Cr>", key_opts)
            keymap("n", "<leader>tpm", "<cmd>RustParentModule<Cr>", key_opts)
            keymap("n", "<leader>tjl", "<cmd>RustJoinLines<Cr>", key_opts)
            keymap("n", "<leader>tha", "<cmd>RustHoverActions<Cr>", key_opts)
            keymap("n", "<leader>thr", "<cmd>RustHoverRange<Cr>", key_opts)
            keymap("n", "<leader>tmd", "<cmd>RustMoveItemDown<Cr>", key_opts)
            keymap("n", "<leader>tmu", "<cmd>RustMoveItemUp<Cr>", key_opts)
            keymap("n", "<leader>tsb", "<cmd>RustStartStandaloneServerForBuffer<Cr>", key_opts)
            keymap("n", "<leader>td", "<cmd>RustDebuggables<Cr>", key_opts)
            keymap("n", "<leader>tv", "<cmd>RustViewCrateGraph<Cr>", key_opts)
            keymap("n", "<leader>tw", "<cmd>RustReloadWorkspace<Cr>", key_opts)
            keymap("n", "<leader>tss", "<cmd>RustSSR<Cr>", key_opts)
            keymap("n", "<leader>txd", "<cmd>RustOpenExternalDocs<Cr>", key_opts)

            require("rust-tools").setup {
              tools = {
                on_initialized = function()
                  vim.cmd [[
                    autocmd BufEnter,CursorHold,InsertLeave,BufWritePost *.rs silent! lua vim.lsp.codelens.refresh()
                  ]]
                end,
              },
              server = {
                on_attach = require("arvand.lsp.handlers").on_attach,
                capabilities = require("arvand.lsp.handlers").capabilities,
                settings = {
                  ["rust-analyzer"] = {
                    lens = {
                      enable = true,
                    },
                    checkOnSave = {
                      command = "clippy",
                    },
                  },
                },
              },
            }

            goto continue
          end

          lspconfig[server].setup(opts)
          ::continue::
        end
