vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true      -- True color support
vim.opt.scrolloff = 8             -- Keep 8 lines above/below cursor
vim.opt.backup = false
vim.opt.smartindent = true        -- Smart indentation
vim.opt.clipboard = "unnamedplus"
vim.opt.ignorecase = true
vim.opt.scrolloff = 4

vim.highlight.priorities.semantic_tokens =  95

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>",  {desc = "Save File"})
vim.keymap.set("n", "<leader>q", ":q<CR>", {desc = "Quit File"})
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

