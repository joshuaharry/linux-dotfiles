-- Global settings
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Keybindings
function nnoremap(command, action, config)
    local options = { noremap = true, silent = true }
    if config then
        options = vim.tbl_extend("force", options, config)
    end
    vim.api.nvim_set_keymap("n", command, action, options)
end

vim.g.mapleader = " "
nnoremap("q", ":q<CR>")
nnoremap("<leader>w", "<C-w>w")
nnoremap("<leader>e", ":Ex<CR>")
nnoremap("<leader>v", ":Vex<CR>")
nnoremap("<leader>j", ":bnext<CR>")
nnoremap("<leader>k", ":bprev<CR>")
nnoremap("<leader>f", ":za")

-- Plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
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
  "cohama/lexima.vim",
  {
    "neoclide/coc.nvim",
    branch = "master",
    build = "yarn install --frozen-lockfile",
  },
  "alvan/vim-closetag",
  "HerringtonDarkholme/yats.vim",
  {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  "AlphaTechnolog/pywal.nvim",
  "nvim-treesitter/nvim-treesitter",
  "Olical/conjure",
  'dcampos/nvim-snippy'
})

require('snippy').setup({
    mappings = {
        is = {
            ['<Tab>'] = 'expand_or_advance',
            ['<S-Tab>'] = 'previous',
        },
        nx = {
            ['<leader>x'] = 'cut_text',
        },
    },
})

vim.g.closetag_filenames = '*.html,*.jsx,*.tsx,*.erb'

nnoremap("<leader>p", ":call CocAction('format')<CR>")

vim.cmd [[
nnoremap <leader>sf <cmd>Telescope find_files<cr>
nnoremap <leader>sg <cmd>Telescope live_grep<cr>
nnoremap <leader>sb <cmd>Telescope buffers<cr>
nnoremap <leader>sh <cmd>Telescope help_tags<cr>
]]

vim.cmd('nmap <silent> gd <Plug>(coc-definition)')
vim.cmd('nmap <silent> gy <Plug>(coc-type-definition)')
vim.cmd('nmap <silent> gi <Plug>(coc-implementation)')
vim.cmd('nmap <silent> gr <Plug>(coc-references)')
vim.cmd('inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : coc#refresh()')
vim.cmd('inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "<C-g>u<CR><c-r>=coc#on_enter()<CR>"')
vim.cmd("highlight Visual cterm=NONE ctermbg=255")
