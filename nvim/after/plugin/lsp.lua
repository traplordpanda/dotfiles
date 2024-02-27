local lsp_zero = require('lsp-zero')
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)
-- here you can setup the language servers 

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {'clangd', 'pyright'},
  handlers = {
    lsp_zero.default_setup,
  },
})
-- don't copy/paste this if you don't know what is `lua_ls`.
-- yes, lsp-zero has changed since ThePrimeagen released his video "0 to LSP".
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
