
-- Navigate vim panes better
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { desc = "Navigate to upper pane" })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { desc = "Navigate to lower pane" })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { desc = "Navigate to left pane" })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { desc = "Navigate to right pane" })

-- Remap allowing for deletion without cutting
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")
-- Remap allowing copy-paste from clipboard
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y")
vim.keymap.set({"n", "v"}, "<leader>Y", "\"+Y")
vim.keymap.set({"n", "v"}, "<leader>p", "\"+p")
vim.keymap.set({"n", "v"}, "<leader>P", "\"+P")

vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<C-A-n>", ":Neotree filesystem close<CR>", {})
vim.keymap.set("n", "<C-g>", ":Neotree git_status reveal float<CR>", {})
vim.keymap.set("n", "<C-A-g>", ":Neotree git_status close<CR>", {})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<C-A-f>", builtin.live_grep, { desc = "Telescope find in files" })
vim.keymap.set("n", "<leader>tel", builtin.commands, {})

vim.keymap.set("n", "?", ":WhichKey<CR>", {})
