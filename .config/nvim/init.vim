set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

call plug#begin('~/.vim/plugged')
  Plug 'yuttie/comfortable-motion.vim'
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'
  Plug 'Yggdroot/indentLine'
  Plug 'isRuslan/vim-es6'
  Plug 'vim-ruby/vim-ruby'
  Plug 'scrooloose/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-rails'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'KeitaNakamura/neodark.vim'
  Plug 'thoughtbot/vim-rspec'
  Plug 'chriskempson/vim-tomorrow-theme'
  Plug 'janko-m/vim-test'
  Plug 'scrooloose/nerdcommenter'
  Plug 'airblade/vim-gitgutter'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'christoomey/vim-tmux-runner'
  Plug 'chriskempson/base16-vim'
  Plug '/usr/local/opt/fzf'
  Plug 'junegunn/fzf.vim'
  " Color schemes
  Plug 'drewtempelmeyer/palenight.vim'
  Plug 'ayu-theme/ayu-vim' " ayu theme
  Plug 'mhartington/oceanic-next'
  Plug 'crusoexia/vim-monokai'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'w0rp/ale'
  " Vim snippets
  " Track the engine.
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ludovicchabant/vim-gutentags'
call plug#end()
syntax enable
set termguicolors
set nu
set relativenumber
" Want utf8 at all times
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set ruler                      " Always show current position
set cmdheight=1                " Height of the command bar
set laststatus=2               " Always show the status line
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
" Lovely linenumbers
":set norelativenumber  " turn relative line numbers off
" Searching
set hlsearch
" For backspace
set backspace=indent,eol,start
" VIM TMUX Integration (https://thoughtbot.com/upcase/videos/tmux-vim-integration)
" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
" NERDTree options
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1 " Does not show Press ? for help
map <C-n><C-f> :NERDTreeFind<CR>
let g:NERDTreeIgnore = ['^node_modules$']
" CtrlP new shortcut
" map ff :CtrlP<.><cr>
" Command T plugin
"map ff :CommandT<CR>
" nmap <C-p> :CommandT<CR>
if (has("termguicolors"))
  set termguicolors
endif
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
let g:airline_theme='oceanicnext'
" Neodark theme: If you want to change background, set the 6 digit color code:
" colorscheme neodark
" colorscheme Tomorrow-Night
" colorscheme Tomorrow-Night-Eighties
colorscheme OceanicNext
"let g:neodark#background = '#202020'
"let g:neodark#use_256color = 1 " default: 0
"let g:neodark#terminal_transparent = 1 " default: 0
"let g:neodark#solid_vertsplit = 1 " default: 0
" Exclude files and directories using Vim's wildignore and CtrlP's own g:ctrlp_custom_ignore. If a custom listing command is being used, exclusions are ignored:
set wildignore+=*/tmp/*,*.so,*.swp,*.zip    " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
set wildignore+=*/node_modules/*     " Don't search inside Node.js modules
set wildignore+=*/public/packs     " Don't search inside Node.js modules
set wildignore+=*/public/packs-test     " Don't search inside Node.js modules
  "let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
  "let g:ctrlp_custom_ignore = {
  "  \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules\|vendor|tmp)$',
  "  \ 'file': '\v\.(exe|so|dll)$',
  "  \ 'link': 'some_bad_symbolic_links',
  "  \ }
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" vim-rspec
let g:rspec_command = "bundle exec rspec {spec}"
" Rspec
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
nmap <S-Enter> O<Esc>
" Fix files with prettier, and then ESLint.
let b:ale_fixers = ['rubocop', 'reek', 'scss_lint']

" NerdTree
nnoremap <silent> <Leader>v :NERDTreeFind<CR> ” open NerdTree on the file you’re editing

" NerdCommenter
let NERDSpaceDelims=1

" Comfortable-Motion
set mouse=a
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>

" Disable Ale when text changes
" ALE settings
"
" Fix files with prettier, and then ESLint.
let g:ale_fixers = ['rubocop', 'reek', 'scss_lint', 'eslint']
" Only run linters named in ale_linters settings.
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\   'css': ['scss_lint'],
\}
let g:ale_linters_explicit = 1

nmap <silent> <leader>af :ALEFix<cr>
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>

map <C-P> :call fzf#vim#files('', fzf#vim#with_preview('right'))<CR>
" for Ag
command! -bang -nargs=* Ag
  \ call fzf#vim#grep(
  \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
" for Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep('rg --column --no-heading --line-number --color=always '.shellescape(<q-args>),
  \ 1,
  \ fzf#vim#with_preview(),
  \ <bang>0)

" trim whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" ruby do..end match
runtime macros/matchit.vim
" open nerd tree with focus on current file
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" COC setup
let g:coc_global_extensions = ['coc-tsserver', 'coc-eslint']
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let $FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
let $FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
map <leader>vimrc :tabe ~/.vim/.vimrc<cr>
autocmd bufwritepost .vimrc source $MYVIMRC
