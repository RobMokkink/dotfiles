" Filetype detection, see http://vimdoc.sourceforge.net/htmldoc/filetype.html#:filetype-overview
filetype on
filetype plugin on
filetype plugin indent on

" Set syntax on
syntax on

"Color scheme setting
" colors desert
set bg=dark

" Comment lines must be white
hi Comment ctermfg=White
au ColorScheme * hi Comment ctermfg=White

" Show command history
set showcmd

" Show linenumbers
set number

" Show matching code blocks
set showmatch

" Show all search matches
set hlsearch

" F10 to remove all end of line whitespace
nnoremap <silent> <F10> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

" Bind F11 to disable highlighting all search matches from hlsearch
nnoremap <F11> :nohlsearch<CR>

" Bind F12 to add changelog entry
nnoremap <F12> "=strftime("* %a %b %d %Y Rob Mokkink <rob@mokkinksystems.com>\n- \n")<CR>P:echo @"<CR>


