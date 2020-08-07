" Plugins will be downloaded under the specified directory
call plug#begin('~/.config/nvim/plugins')
  " Fancy start screen for vim
  Plug 'mhinz/vim-startify'

  " Some 'sensible' defaults for everyone
  Plug 'tpope/vim-sensible'

  " Install the themes
  " Plug 'drewtempelmeyer/palenight.vim'
  " Plug 'ayu-theme/ayu-vim'
  Plug 'srcery-colors/srcery-vim'

  " This plugin gives you the status bar that is at the bottom
  Plug 'itchyny/lightline.vim'

  " vim-sandwich is an alternative to vim-surround and it was highly
	" recommended on reddit because of it's intuitive keybindings.
	" Personally I have not tried vim-surround
	" Plug 'machakann/vim-sandwich'
  Plug 'tpope/vim-surround'

	" For Git
	Plug 'tpope/vim-fugitive'
  " To check see the changes on the left in a file
  Plug 'airblade/vim-gitgutter'

  " For linting (syntax checking and semantic errors) acting as a Vim
	" LSP client
	" Plug 'dense-analysis/ale'
	
	" VSCode like autocompletion etc
	" It requires node.js to be installed
	" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  " Now use the built in LSP client for neovim
  "Plug 'neovim/nvim-lsp'

  " fzf for File searching. The line in brackets is just to make sure that the latest versionof
  " the binary is present
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

  " To format all kinds of code
  Plug 'sbdchd/neoformat'
  " Plug 'Chiel92/vim-autoformat'
    
  " File explorer
  Plug 'preservim/nerdtree'
  " Plug 'justinmk/vim-dirvish' " I dont know how to use this

  " To jump around a file easily
  Plug 'easymotion/vim-easymotion'
  " Plug 'justinmk/vim-sneak'

  " Add icons
  Plug 'ryanoasis/vim-devicons'

  " Add vim-hardtime to get better at vim
  " Plug 'takac/vim-hardtime'

  " To move line selection up, down, even left or right. Just like in VSCode
  Plug 'matze/vim-move'

  " VSCode / Sublime like multicursor
  " Plug 'terryma/vim-multiple-cursors'

  " To automatically close brackets
  " Plug 'tmsvg/pear-tree'
  Plug 'jiangmiao/auto-pairs'

  " Use deoplete for autocompletion. To complement with LanguageClient
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

  " nvim-lsp but I am unable to figure out how to configure it for
  " autocompletion TODO
  " PREREQUISITES: pip3 install --user pynvim
  " Plug 'haorenW1025/completion-nvim'

  " Gotta love snippets
  " PREREQUISITES: pip3 install --user pynvim
  " Plug 'Shougo/deoppet.nvim', { 'do': ':UpdateRemotePlugins' }
  " Plug 'Shougo/neosnippet.vim'
  " Plug 'Shougo/neosnippet-snippets'
  " Plug 'SirVer/ultisnips'
  " Plug 'hrsh7th/vim-vsnip'
  " Plug 'hrsh7th/vim-vsnip-integ'

  " You work with python, ruby or another language that has a REPL? This plugin is for you! It sends the current chunk of your code to your chosen REPL-instance. Good for testing without having to run the entire file again and again (especially when this includes pulling information from remote sites). Works with tmux and screen
  Plug 'jpalardy/vim-slime'
    
  " The builtin incsearch and hlsearch is awesome - but this is even better! Highlights as you go.
  Plug 'haya14busa/incsearch.vim'
    

  " Displays function signatures from completions in the command line.
  Plug 'Shougo/echodoc.vim'

    " List of plugins end here. Plugins become visible to Vim after this call.
call plug#end()

" Changing tab sizes following the answer from here https://stackoverflow.com/questions/2054627/how-do-i-change-tab-size-in-vim
set tabstop=2
set shiftwidth=2
set expandtab

" Set the leader key to ,
let mapleader=","

" Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>

" Change default motion for easymotion from <leader><leader> to <leader>
map <Leader> <Plug>(easymotion-prefix)

" Set the color for ayu theme (options are light, mirage and dark)
" let ayucolor="dark"

" srcery settings
let g:srcery_italic = 1

" Set the colorscheme and theme
set background=dark
colorscheme srcery

" Change the colorcheme for lightline to palenight
" let g:lightline = { 'colorscheme': 'palenight' }
" Change the lightline colorscheme to srcery
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ }

"Enable true colors
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

" Italics for palenight
let g:palenight_terminal_italics=1

" Set relative line numbers
set relativenumber

" Required for operations modifying multiple buffers like rename (for
" LanguageClient)
" set hidden

" Use rust_analyzer with built in LSP client
" lua require'nvim_lsp'.rust_analyzer.setup({on_attach=require'completion'.on_attach})
" Use TypeScript LSP
" lua require'nvim_lsp'.tsserver.setup({})
" Installed bashls
" Installed jsonls

" Enable vim-hardtime for every buffer
" let g:hardtime_default_on = 1

" Label mode for vim-sneak : a minimalist alternative for easymotion
" let g:sneak#label = 1

" Toggle highlight using F3
nnoremap <F3> :set hlsearch!<CR>

" Make fzf work like Ctrl-P like in VSCode
" You can close the fzf buffer by doing a Ctrl-D / Ctrl-[ / Esc etc
nnoremap <c-p> :FZF<cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
" set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
" set shortmess+=c

" Enable snippet support for completion-nvim
" let g:completion_enable_snippet = 'vim-vsnip'

" LanguageClient specific functionality
let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

let g:deoplete#enable_at_startup = 1

" Recommended setting for LanguageClient from https://github.com/autozimu/LanguageClient-neovim/wiki/Recommended-Settings
function SetLSPShortcuts()
  nnoremap <leader>ld :call LanguageClient#textDocument_definition()<CR>
  nnoremap <leader>lr :call LanguageClient#textDocument_rename()<CR>
  nnoremap <leader>lf :call LanguageClient#textDocument_formatting()<CR>
  nnoremap <leader>lt :call LanguageClient#textDocument_typeDefinition()<CR>
  nnoremap <leader>lx :call LanguageClient#textDocument_references()<CR>
  nnoremap <leader>la :call LanguageClient_workspace_applyEdit()<CR>
  nnoremap <leader>lc :call LanguageClient#textDocument_completion()<CR>
  nnoremap <leader>lh :call LanguageClient#textDocument_hover()<CR>
  nnoremap <leader>ls :call LanguageClient_textDocument_documentSymbol()<CR>
  nnoremap <leader>lm :call LanguageClient_contextMenu()<CR>
endfunction()

" augroup LSP
  " autocmd!
  " autocmd FileType cpp,c call SetLSPShortcuts()
" augroup END

" Recommended settings for echodoc by LanguageClient
set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" Always draw the sign column to show errors and warnings
set signcolumn=yes

" Saner behaviour for n and N
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]
