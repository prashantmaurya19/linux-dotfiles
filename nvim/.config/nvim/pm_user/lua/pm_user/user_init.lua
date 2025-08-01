vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.mouse = "a"
vim.opt.encoding = "UTF-8"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  signs = true,
})

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("command Z w | qa")
vim.cmd("cabbrev wqa Z")

--lsp_global_conf
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { focusable = false })
