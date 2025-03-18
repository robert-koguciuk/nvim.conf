-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable the spacebar key's behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

-- save file
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- save file without auto-formatting
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- quit file
vim.keymap.set('n', '<C-q>', '<cmd> q <CR>', opts)

-- delete a single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- vertical scroll and center
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- find and center
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Resize with arrows
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)

-- Window management
vim.keymap.set('n', '<Leader>v', '<C-w>v', opts)
vim.keymap.set('n', '<Leader>h', '<C-w>s', opts)
vim.keymap.set('n', '<Leader>se', '<C-w>=', opts)
vim.keymap.set('n', '<Leader>xs', ':close<CR>', opts)
--
-- Navigate between splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
vim.keymap.set('n', '<Leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<Leader>tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<Leader>tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<Leader>tp', ':tabp<CR>', opts)

-- Toggle line wrap
vim.keymap.set('n', '<Leader>lw', 'cmd set wrap <CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostics keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next' })
vim.keymap.set('n', '<Leader>d', vim.diagnostic.open_float, { desc = 'Open float' })
vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, { desc = 'setloclist' })

