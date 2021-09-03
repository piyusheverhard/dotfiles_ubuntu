syntax on
let g:gruvbox_contrast_dark = 'hard'
highlight Normal guibg=NONE ctermbg=NONE
colorscheme gruvbox
" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
endif
