---------------------
--- File settings ---
---------------------
---- set nowritebackup
vim.opt.writebackup = false
---- set nobackup
vim.opt.backup = false
---- set noswapfile
vim.opt.swapfile = false
---- set encoding=utf-8
vim.opt.encoding = "utf-8"
---- set fileencodings=utf-8
vim.opt.fileencodings = "utf-8"
---- set fileformats=unix,doc,mac
vim.opt.fileformats = unix, doc, mac
---- set ambiwidth=double
vim.opt.ambiwidth = double
---- set wildmenu
vim.opt.wildmenu = true

------------------------
--- Display settings ---
------------------------
---- set title
vim.opt.title = true
---- set number
vim.opt.number = true
---- set cursorline
vim.opt.cursorline = ture
---- set showcmd
vim.opt.showcmd = true
---- set noerrorbells
vim.opt.errorbells = false
---- set showmatch matchtime=1
vim.opt.showmatch.matchtime = 1
---- set cmdheight=2
vim.opt.cmdheight = 2
---- set laststatus=2
vim.opt.laststatus = 2
---- set display=lastline
vim.opt.display = lastline

-----------------------
--- Search settings ---
-----------------------
---- set hlsearch
vim.opt.hlsearch = true
---- set ignorecase
vim.opt.ignorecase = true
---- set smartcase
vim.opt.smartcase = true
---- set wrapscan
vim.opt.wrapscan = true
---- set incsearch
vim.opt.incsearch = true

---------------------------
--- Complement settings ---
---------------------------
---- set expandtab
vim.opt.expandtab = true
---- set tabstop=4
vim.opt.tabstop = 4
---- set shiftwidth=4
vim.opt.shiftwidth = 4
---- set smartindent
vim.opt.smartindent = true

--------------------------
--- Operation settings ---
--------------------------
---- set mouse=a
vim.opt.mouse = a
---- set clipboard=unnamed,autoselect
vim.opt.clipboard = unnamed, autoselect
---- set shell = "zsh"
vim.opt.shell = "zsh"

-----------------------
--- Window settings ---
-----------------------
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 0
