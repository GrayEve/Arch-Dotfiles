return {
  {	
    "mason-org/mason.nvim",
     opts = {}    
}, 
{
  "mason-org/mason-lspconfig.nvim",
   opts = {
     },
     {
       "neovim/nvim-lspconfig",
       config = function()
	 local lspconfig = require("lspconfig")
         lspconfig.lua_ls.setup({})
         lspconfig.basedpyright.setup({})

    	  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})		                       vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    	  vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {}) 
	end
        }		
    },	 
}

