-- Neovim configuration file
--

-- add lazy.nvim to runtimepath
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

-- now you can call require("lazy")
require("lazy").setup({
  -- list your plugins here, e.g., nvim-treesitter
  --
  {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"}
})

require("nvim-treesitter.configs").setup {
    ensure_installed = {"tsx"},
    highlight = {enable = true },
}

-- Reload vimrc in nvim
-- luafile $MYVIMRC
-- echo $MYVIMRC -- check filename

-- Show line numbers
vim.o.number = true
-- existing tabs are 4 spaces
vim.o.tabstop = 4
-- On pressing tab, convert tab to spaces
vim.o.expandtab = true
-- use 4 spaces when indenting
vim.o.shiftwidth = 4

-- Color vertical columns based on standard max width of files
vim.o.colorcolumn = "70,80,100,120"

-- Change syntax color
vim.cmd("colorscheme industry")
--vim.api.colorscheme("industry") # doesn't exist...

-- Set line number color (api faster than vim-cmd)
--vim.cmd("highlight LineNr ctermfg=LightBlue")
vim.api.nvim_set_hl(0, "LineNr", { ctermfg = "LightBlue",})
