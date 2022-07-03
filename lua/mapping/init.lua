local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}
local iopts = { noremap = true, silent = true}
local expr_opts = { noremap = true, expr = true, silent = true }
vim.g.mapleader = ' '
-- Modes
--   normal_mode = 'n'
--   insert_mode = 'i'
--   visual_mode = 'v'
--   visual_block_mode = 'x'
--   term_mode ='t'
--   command_mode = 'c'
  
----------------------------------------------------------
-- Normal --
----------------------------------------------------------
keymap('n', "H", "^", iopts)
keymap('n', "L", "$", iopts)
keymap('v', 'H', '^', opts)
keymap('v', 'L', '$', opts)
-- Visual line wraps
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", expr_opts)
-- Center search results
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)
-- Better escape using jj in insert and terminal mode
keymap('i', 'jj', '<ESC>', opts)
keymap('t', 'jj', '<C-\\><C-n>', opts)

-- Better window navigation
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)
-- Resize with arrows
-- keymap('n', '<C-Up>', ':resize -2<CR>', opts)
-- keymap('n', '<C-Down>', ':resize +2<CR>', opts)
-- keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
-- keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)

keymap('n', '<Left>', ':vertical resize +1<CR>', opts)
keymap('n', '<Right>', ':vertical resize -1<CR>', opts)
keymap('n', '<Up>', ':resize -1<CR>', opts)
keymap('n', '<Down>', ':resize +1<CR>', opts)

-- Navigate buffers
keymap('n', '<C-b>h', ':bnext<CR>', opts)
keymap('n', '<C-b>l', ':bprevious<CR>', opts)
-- Move text up and down
-- keymap('n', '<A-j>', '<Esc>:m .+1<CR>==gi', opts)
-- keymap('n', '<A-k>', '<Esc>:m .-2<CR>==gi', opts)

----------------------------------------------------------
-- Visual Block
----------------------------------------------------------
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Paste over currently selected text without yanking it
keymap('v', 'p', '"_dP', opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- NvimTree
keymap('n', '<Leader>t', ':NvimTreeToggle <CR>', opts)

-- barbar
-- Move to previous/next
keymap('n', '<C-j>', ':BufferPrevious<CR>', opts)
keymap('n', '<M-j>', ':BufferPrevious<CR>', opts)
keymap('n', '<C-k>', ':BufferNext<CR>', opts)
keymap('n', '<M-k>', ':BufferNext<CR>', opts)
-- Re-order to previous/next
keymap('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', ':BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap('n', '<A-1>', ':BufferGoto 1<CR>', opts)
keymap('n', '<A-2>', ':BufferGoto 2<CR>', opts)
keymap('n', '<A-3>', ':BufferGoto 3<CR>', opts)
keymap('n', '<A-4>', ':BufferGoto 4<CR>', opts)
keymap('n', '<A-5>', ':BufferGoto 5<CR>', opts)
keymap('n', '<A-6>', ':BufferGoto 6<CR>', opts)
keymap('n', '<A-7>', ':BufferGoto 7<CR>', opts)
keymap('n', '<A-8>', ':BufferGoto 8<CR>', opts)
keymap('n', '<A-9>', ':BufferGoto 9<CR>', opts)
keymap('n', '<A-0>', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keymap('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- telescope mapping
keymap('n', '<Leader>ff', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', opts)
keymap('n', '<Leader>fc', ':Telescope git_commits<CR>', opts)
