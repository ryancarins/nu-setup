vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	"sainnhe/gruvbox-material",
	"junegunn/vim-slash",
	"farmergreg/vim-lastplace",
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"debugloop/telescope-undo.nvim",
		},
		config = function()
		require("telescope").setup({
			extensions = {
				undo = {},
			},
		})
		require("telescope").load_extension("undo")
		vim.keymap.set('n', '<leader>u', "<cmd>Telescope undo<cr>")
		end,
	},
	{
	  'stevearc/oil.nvim',
	  opts = {},
	  dependencies = { "nvim-tree/nvim-web-devicons" },
	}
})

vim.opt.termguicolors = true
vim.cmd 'colorscheme gruvbox-material'
vim.o.undofile=true
vim.o.undodir = vim.fn.stdpath('config') .. '/undo'
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.lazyredraw = true
vim.o.scrolloff = 4
vim.opt.number = true
vim.o.errorbells = false

