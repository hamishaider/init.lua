set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
set timeoutlen=1000

filetype plugin on

call plug#begin('~/.vim/plugged')
"====TELESCOPE================
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
" Plug 'morhetz/gruvbox'
"Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
"Plug 'dense-analysis/ale'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'jose-elias-alvarez/null-ls.nvim'
" Plug 'nachumk/systemverilog.vim'
"Plug 'bling/vim-bufferline'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
" Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Plug 'prabirshrestha/vim-lsp'
Plug 'neovim/nvim-lspconfig'
"Plug 'mattn/vim-lsp-settings'
" Plug 'ctrlpvim/ctrlp.vim'
"Plug 'preservim/nerdcommenter'
Plug 'numToStr/Comment.nvim'
" Plug 'davidhalter/jedi-vim'
"==========THEMES==============
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'tomasr/molokai'
Plug 'hrsh7th/vim-vsnip'
Plug 'ellisonleao/gruvbox.nvim'

Plug 'ludovicchabant/vim-gutentags'
"======== CMP ========
Plug 'hrsh7th/nvim-cmp'
Plug 'delphinus/cmp-ctags'
Plug 'hrsh7th/cmp-vsnip'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

call plug#end()

lua << EOF
require("catppuccin").setup {
	flavour = "mocha", -- latte, frappe, macchiato, mocha
	term_colors = true,
	transparent_background = false,
	no_italic = false,
	no_bold = false,
	styles = {
		comments = {},
		conditionals = {},
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
	},
	color_overrides = {
		mocha = {
			base = "#000000",
			mantle = "#000000",
			crust = "#000000",
		},
	},
	highlight_overrides = {
		mocha = function(C)
			return {
				TabLineSel = { bg = C.pink },
				CmpBorder = { fg = C.surface2 },
				Pmenu = { bg = C.none },
				TelescopeBorder = { link = "FloatBorder" },
			}
		end,
	},
    integration = {
        nvimtree = {
            enabled = true,
            show_root = false, -- makes the root folder not transparent
            transparent_panel = true, -- make the panel transparent
        },
    },
}

vim.cmd.colorscheme "catppuccin"
EOF
" set background=mocha
" colorscheme onedark
" colorscheme molokai
" colorscheme catppuccin-mocha
" autocmd vimenter * ++nested colorscheme gruvbox
" colorscheme gruvbox
"colorscheme onedark
hi Comment cterm=italic
"========NERDCOMMENTER=============
" Create default mappings
"let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'
" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
"let g:NERDToggleCheckAllLines = 1

lua require("Comment").setup()


" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
 endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
"" Map leader to ,
let mapleader=','


"" Buffer nav
noremap <leader>z :bp<CR>
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>

"" Close buffer
noremap <leader>dc :bd<CR>

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>


"======ESSENTIAL KEY BINDINGS================
"inoremap <silent> jk <ESC>
"tnoremap <silent> jk <C-\><C-n>
nnoremap <leader>tt :TroubleToggle<CR>
nnoremap <silent> " ea"<ESC>bi"<ESC>e
nnoremap <silent> ' ea'<ESC>bi'<ESC>e
nnoremap <silent> <SPACE>[ ea]<ESC>bi[<ESC>e
nnoremap <silent> <SPACE>] ea]<ESC>bi[<ESC>e
nnoremap <silent> <SPACE>( ea)<ESC>bi(<ESC>e
nnoremap <silent> <SPACE>) ea)<ESC>bi(<ESC>e
nnoremap <silent> <SPACE>{ ea}<ESC>bi{<ESC>e
nnoremap <silent> <SPACE>} ea}<ESC>bi{<ESC>e
noremap <silent> <F3> :w<RETURN>
inoremap <silent> <F3> <ESC>:w<RETURN>
noremap <silent> <TAB> :tabnext<RETURN>
noremap <silent> <S-TAB> :tabNext<RETURN>
nnoremap <silent> <SPACE>o :NERDTreeToggle<RETURN>
noremap <silent> <SPACE>q :q<RETURN>
nnoremap <silent> <SPACE>h <C-w><LEFT>
nnoremap <silent> <SPACE>j <C-w><DOWN>
nnoremap <silent> <SPACE>k <C-w><UP>
nnoremap <silent> <SPACE>l <C-w><RIGHT>
nnoremap <silent> <SPACE>p :lua require('telescope.builtin').find_files()<CR>
nnoremap <silent> <SPACE>t :let $VIM_DIR=expand('%:p:h')<CR>:10split<CR>:terminal<CR>
nnoremap <silent> <SPACE>r :let $VIM_DIR=expand('%:p:h')<CR>:vsplit<CR>:terminal<CR>cd $VIM_DIR<CR>
noremap <silent> <Leader>ga :Gwrite<CR>
noremap <silent> <Leader>gc :Gcommit<CR>
noremap <silent> <Leader>gsh :Gpush<CR>
noremap <silent> <Leader>gll :Gpull<CR>
noremap <silent> <Leader>gs :Gstatus<CR>
noremap <silent> <Leader>gb :Gblame<CR>
noremap <silent> <Leader>gd :Gvdiff<CR>
noremap <silent> <Leader>gr :Gremove<CR>
nnoremap <silent> ; $
nnoremap <silent> d; d$
nnoremap <silent> y; y$
nnoremap <silent> c; c$
nnoremap <silent> <A-j> :m+<CR>
nnoremap <silent> <A-k> :m -2<CR>
inoremap <silent> <A-j> <ESC>:m+<CR>a
inoremap <silent> <A-k> <ESC>:m -2<CR>a
xnoremap <silent> <A-j> :m'>+<CR>gv
xnoremap <silent> <A-k> :m -2<CR>gv
nnoremap <silent> <S-T> :tabnew<CR>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

"==================SV Format======================
" autocmd BufWritePre *.sv %!verible-verilog-format --column_limit 80 --indentation_spaces 4  -
" autocmd BufWritePre *.v %!verible-verilog-format --column_limit 80 --indentation_spaces 4  -

"=============== Python Format ========================

"========== VIM LSP =====================
"lua << EOF
"    require('lspconfig').svls.setup{}
"    require('lspconfig').pyright.setup{}
"EOF

"============= White spaces ============
fun! TrimWhiteSpaces()
    let l:save = winsaveview()
    keeppattern %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup ws
    autocmd!
    autocmd BufWritePre * :call TrimWhiteSpaces()
augroup END

"=========== TREE SITTER '''''''
lua << EOF
-- require'nvim-treesitter.install'.compilers = { "gcc -std=c99" }
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "python", "verilog", "vim" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing (for "all")
  ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- disable = {"verilog"},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

"=================== NULL LS SETUP ==========
lua << EOF
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.black,
        require("null-ls").builtins.formatting.verible_verilog_format,
        -- require("null-ls").builtins.diagnostics.vint,
        -- require("null-ls").builtins.formatting.codespell,
        -- require("null-ls").builtins.formatting.isort,
        -- require("null-ls").builtins.formatting.shellharden,
        require("null-ls").builtins.formatting.prettierd,
    },
})
EOF


autocmd BufWritePre *.vim :lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.v :lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.sv :lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.py :lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.sh :lua vim.lsp.buf.formatting_sync()
autocmd BufWritePre *.json :lua vim.lsp.buf.formatting_sync()



"============= CMP CONFIG ===================
set completeopt=menu,menuone,noselect

lua << EOF
    local cmp = require('cmp')
    cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ behaviour = cmp.ConfirmBehavior.Replace, select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { 'i', 's' }),
    }),
  sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'ctags'},
      { name = 'path'},
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
   cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      -- { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })


  cmp.setup.filetype('systemverilog', {
    sources = cmp.config.sources({
      {name = 'ctags'},
      -- { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })
  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig').svls.setup {
  }
  require('lspconfig').pyright.setup {
    capabilities = capabilities
  }
EOF
