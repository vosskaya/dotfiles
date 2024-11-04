" obtain newest version of this file with
" curl --create-dirs -o ~/.config/nvim/ginit.vim https://gist.githubusercontent.com/vosskaem/490659a43c8b30a465791572d2557d16/raw/ginit.vim

set mouse=a

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    "GuiFont FiraCode\ Nerd\ Font\ Mono:h11
    GuiFont JetBrainsMono\ Nerd\ Font\ Mono:h11
    "GuiFont SauceCodePro\ Nerd\ Font\ Mono:h11
    "GuiFont Hack\ Nerd\ Font\ Mono:h11
endif


"" Disable GUI Tabline
"if exists(':GuiTabline')
"    GuiTabline 0
"endif
"
"" Disable GUI Popupmenu
"if exists(':GuiPopupmenu')
"    GuiPopupmenu 0
"endif

"" Enable GUI ScrollBar
"if exists(':GuiScrollBar')
"    GuiScrollBar 1
"endif

" Right Click Context Menu (Copy-Cut-Paste)
"nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
"inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
"xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
"snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
