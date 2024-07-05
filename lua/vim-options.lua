vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set wildmenu")
vim.cmd("set number")

vim.cmd("let g:vimspector_enable_mappings = 'HUMAN'")
vim.cmd("let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB' ]")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--vim.lsp.set_log_level("debug")

