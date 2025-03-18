require("core/options")
require("core/keymaps")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	"hrsh7th/nvim-cmp",
	require("plugins.colortheme"),
	require("plugins/lsp"),
	require("plugins.neotree"),
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.autocompletion"),
	require("plugins.autoformatting"),
	require("plugins/indent-blankline"),
})
