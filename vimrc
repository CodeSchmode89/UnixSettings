set exrc
set nowrap
set ignorecase
set mouse=a
set backspace=eol,start
set whichwrap=b,s,<,>,[,]
set autoindent
set formatoptions=roqnc
set textwidth=70
set showmatch
set nosol
set selection=exclusive
set foldmethod=marker
set encoding=latin1
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set tabpagemax=100
set nu
set wrap
set hlsearch
set guifont=Monospace\ 14

" Python Syntax Highlighting
au BufRead,BufNewFile *.py set filetype=python
let g:python_highlight_string_format = 1
let g:python_highlight_builtin_objs  = 1

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"set guifont=-b&h-lucidatypewriter-medium-r-normal-*-*-240-*-*-m-*-iso8859-1
colorscheme onehalfdark
let g:lightline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
filetype on
syntax on
hi Comment ctermfg=6
map!  <backspace>
map! <C-j> <Esc>gqapi
"color default

"verilog
:au bufread,bufnewfile *.{v[hsp],sv,svh,slg,chf,hier,mcl} setf verilog
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} set shiftwidth=4
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} set expandtab
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} set softtabstop=4
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} set writeany
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} set noro
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} syn match pipestage /M[n0-9][n0-9][n0-9][HL]/
:au BufRead,BufNewFile *.{v[hsp],sv,svh,slg,chf,hier,mcl} highlight pipestage ctermfg=DarkGreen

"Acerun Test
":au bufread acerun.log.gz colors desert


"change vi Search highlight magenta background white foreground
hi Search ctermbg=5* ctermfg=7*;

"Highlight %ERROR and * ERROR in red backgound and white forground
highlight ErrorGroup ctermbg=red guibg=red ctermfg=white guifg=white
mat ErrorGroup /%ERROR\|\* ERROR\|ERROR-\|OVM_ERROR\|OVM_FATAL\c/

"Highlight OVM Messages
"highlight OVMGroup ctermbg=blue guibg=blue ctermfg=white guifg=white
"mat OVMGroup /OVM_INFO.* @ \|OVM_REPORT.* @ \c/

"Highlight Modules (i.e. strings before ::) in green and functions (strings after ::) in blue 
highlight ModuleGroup ctermfg=green guifg=green
syntax match ModuleGroup /[a-zA-Z]*::/
