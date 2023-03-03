" vim:et:ts=4:sts=4:sw=4

set nocompatible

filetype indent plugin on
if has('syntax')
    syntax on
endif

set smarttab
set autoindent
set smartindent
set timeoutlen=200
set number
set relativenumber
set laststatus=2
set incsearch
set hlsearch
set wildmenu
set lazyredraw
set mouse=a
set backspace=indent,eol,start

if has('gui_running')
    set guifont=Sarasa\ Mono\ SC\ 11
    set guioptions=aei
endif

nn <C-s> :w<CR>
im fj <ESC>
im jf <ESC>

helptags ALL

" airline config
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif

packadd gruvbox
set background=light
let g:gruvbox_italic=1
colorscheme gruvbox

" ALE settings
nnoremap <leader>s :ALEFix<CR>
augroup complete
    autocmd!
    autocmd CompleteDone * pclose
augroup end

" vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
