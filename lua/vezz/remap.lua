vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP<CR>]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y<CR>]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p<CR>]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d<CR>]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "G", "Gzz")

-- args list
vim.keymap.set("n", "<leader>an", "<cmd>exe v:count1 .. 'n'<bar>args<cr><esc>") --next arg
vim.keymap.set("n", "<leader>ap", "<cmd>exe v:count1 .. 'N'<bar>args<cr><esc>") --prev arg

vim.keymap.set("n", "<leader>aa", "<cmd>$arge %<bar>argded<bar>args<cr>")       --add current
vim.keymap.set("n", "<leader>ad", "<cmd>argd %<bar>args<cr>")                   --delete current
vim.keymap.set("n", "<leader>ac", "<cmd>%argd<cr><C-L>")                        --clear
