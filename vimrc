set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"<Leader> key is ,
let mapleader=","

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'Lokaltog/powerline.git'
Bundle 'ervandew/supertab.git'
Bundle 'tpope/vim-surround.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'fholgado/minibufexpl.vim.git'
Bundle 'joonty/vim-phpqa.git'
    " Snipmate dependencies
    Bundle "MarcWeber/vim-addon-mw-utils.git"
    Bundle "tomtom/tlib_vim.git"
    Bundle "honza/snipmate-snippets.git"
Bundle 'garbas/vim-snipmate.git'
" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'php.vim'
Bundle 'phpcomplete.vim'
" non github repos
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" General
  syntax on
  set backspace=indent,eol,start    " make backspace a bit more flexible
  set nobackup                      " No backup!
  set iskeyword+=_,@,%,#            " none of these are word dividers
  set noerrorbells                  " Do not make any noise!
  set vb                            " I said, NO noise

" UI
  set cursorline                " Highlight the current line
  set scrolloff=8               " Keep x line for scope while scrolling
  set sidescrolloff=8           " same same
  set showmatch                 " Show matching bracket
  set number                    " Show line numbers in gutter
  set ruler                     " Always show current position along the bottom
  set showcmd                   " Show the command being typed
  set list                      " Show special chars
  set langmenu=en_US.UTF-8
  set pastetoggle=<F12>         " pastetoggle (sane indentation on pastes)
  set fillchars="vert: "
  set mouse=a                   " automatically enable mouse usage

" GUI
  let g:Powerline_symbols = 'fancy'
  set tabpagemax=15               " only show 15 tabs
  set showmode                    " display the current mode

  set cursorline                  " highlight current line

  if has('gui_running')
      set guioptions-=T
      set guioptions-=r
      set guioptions-=L
      set lines=40
      let g:solarized_style="dark"
      let g:solarized_contrast="high"
      colorscheme solarized
      set lines=35 columns=100
      if has("gui_gtk2")
          set guifont=Inconsolata\ for\ Powerline\ 12,Menlo\ Regular\ 11,Consolas\ Regular\ 11,Courier\ New\ Regular\ 11
      else
          set guifont=Inconsolata\ 12,Andale\ Mono\ Regular:h14,Menlo\ Regular:h14,Consolas\ Regular:h14,Courier\ New\ Regular:h16
      endif
  else
      colorscheme desert
  endif

" EDITING
  set ff=unix                   " Unix EOL
  set fileencoding=UTF-8        " Speak UTF-8
  set encoding=UTF-8            " Display UTF-8
  set shiftround                " when at 3 spaces, and I hit > ... go to 4, not 5
  set ignorecase                " case sensitivity is dumb
  set smartcase                 " but not where there are different cases
  set nowrap                    " No, I don't want wordwrap
  set tabstop=4                 "
  set shiftwidth=4              "
  set expandtab                 " We do not want tabs, do we?
  set listchars=trail:¤,tab:>-

  set completeopt=menuone,preview " Omnicompletion doesn't open menu
  au BufRead,BufNewFile *.twig set filetype=htmljinja " Using jinja syntax for twig files

" Folding
  set foldenable                                   " enable folding
  set foldmarker={,}                               " Fold C Style code
  set foldmethod=marker                            " Fold on the marker
  set foldlevel=100                                " Do not autofold anything (but i can still fold manually)
  set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

  if exists("SimpleFoldText")
   "function SimpleFoldText()
     "return getline(v:foldstart).' '
   "endfunction
  endif

  set foldtext=SimpleFoldText()                    " Custom fold function (cleaner than default)

" Mappings

  " Changing leader
  let mapleader   = ","
  let g:mapleader = ","

  inoremap jj <Esc>
  inoremap ;; <C-O>A;<Esc>
  nmap <Space> <PageDown>

  map <M-Left> <C-T>
  map <M-Right> g<C-]>

"Plugin settings

  " Align
  let g:loaded_AlignMapsPlugin = "v41"
  vnoremap <leader>aa :Align =><CR>
  vnoremap <leader>ae :Align =<CR>

  " NERDTree settings
  "map <Leader>n :NERDTreeToggle<CR>
  let g:NERDTreeWinPos = "right"
  let NERDTreeQuitOnOpen=1
  map <S-F2> :NERDTreeFind<CR>
  let NERDTreeKeepTreeInNewTab=1

  " Powerline
  set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

  " ctrlp {
  let g:ctrlp_working_path_mode = 2
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|\.hg$\|\.svn$',
      \ 'file': '\.exe$\|\.so$\|\.dll$' }

  let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

  " Exuberant CTags
  set tags=local.tags

  " SuperTab
  let g:SuperTabDefaultCompletionType = "<c-p>"

  " TagList settings {
  let Tlist_Auto_Open=0
  let Tlist_Use_Right_Window=0
  let Tlist_Sort_Type = "name" " order by
  let tlist_php_settings = 'php;c:class;d:constant;f:function' " don't show variables in php

  " MiniBufXplorer settings
  let g:miniBufExplMapWindowNavVim = 1 
  let g:miniBufExplMapWindowNavArrows = 1 
  let g:miniBufExplMapCTabSwitchBufs = 1 
  let g:miniBufExplModSelTarget = 1 

  " snipMate
  let g:snips_author = 'Jeremy Marin'
  let g:snipMate = {}
  let g:snipMate.scope_aliases = {}
  let g:snipMate.scope_aliases['php'] = 'php'
  let g:snipMate.scope_aliases['phtml'] = 'php,html'
  let g:snipMate.scope_aliases['twig'] = 'html'

  " phpmd and CodeSniffer
  let g:phpqa_messdetector_ruleset = "~/.vim/rulesets/phpmd.xml"
  let g:phpqa_codesniffer_args = "--standard=Zend"
  let g:phpqa_codesniffer_autorun = 0 " Don't run codesniffer on save (default = 1)
  let g:phpqa_open_loc = 0 " Keep location list closed by default

  nnoremap <f2> :NERDTreeToggle<CR>
  nnoremap <f3> :TlistToggle<CR>

