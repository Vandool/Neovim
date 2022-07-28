local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    print("Something's wrong look into the lsp ...")
  return
end

require "arvand.lsp.lsp-installer"
require("arvand.lsp.handlers").setup()
require "arvand.lsp.null-ls"
