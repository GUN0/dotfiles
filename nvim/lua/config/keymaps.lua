local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>m", ":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up 
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right

-- Window Manegement
keymap.set("n", "<leader>sv", ":vsplit<CR>", opts) -- Split Vertically 
keymap.set("n", "<leader>sh", ":split<CR>", opts) -- Split Horizontally 
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-/>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-/>", "gcc", { noremap = false })

--Toggle Terminal Vertically
vim.api.nvim_set_keymap('n', '<C-v>', '<cmd>ToggleTerm direction=vertical<CR>', opts)
vim.api.nvim_set_keymap('t', '<C-v>', '<C-\\><C-n><cmd>ToggleTerm direction=vertical<CR>', opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)

--Open and Close Tabs
vim.api.nvim_set_keymap('n', '<C-t>', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', ':tabclose<CR>', { noremap = true, silent = true })

--Switching Tabs
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprev<CR>', { noremap = true, silent = true })

--Delete Backwards
vim.api.nvim_set_keymap('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-BS>', 'db', { noremap = true, silent = true })

