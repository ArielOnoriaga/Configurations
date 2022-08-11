local function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

local function nmap(shortcut, command)
  map('n', shortcut, command)
end

local function vmap(shortcut, command)
  map('v', shortcut, command)
end

nmap('<c-d>', ':bd!<cr>')
nmap('<c-g>', ':NERDTreeFind<cr>')
nmap('<c-i>', ':bn<cr>')
nmap('<c-n>', ':Startify<cr>')
nmap('<c-q>', ':q<cr>')
nmap('<c-s>', ':w<cr>')
nmap('<c-u>', ':NERDTreeToggle<cr>')
nmap('<c-x>', ':bufdo bd!<cr>')

nmap("'", ':History<cr>')
nmap(';', ':GFiles<cr>')
nmap('<c-f>', ':FindByContent<cr>')
nmap('J', ':m.1<cr>')
nmap('K', ':m-2<cr>')
nmap('U', '<c-w>>')
nmap('Y', '<c-w><')
nmap('cfn', ":let @+=expand('%:t:r')<cr>")
nmap('fn', ":let @+=expand('%:t:r')<cr> ;")
nmap('gs', ':CocSearch')
nmap('sf', 'cw ;')
nmap('sw', '*')
nmap('t', '%')

vmap('<c-l>', ':sort<cr>')
vmap('t', '%')

vim.cmd([[
  :nmap <silent>cw yiw
  :nnoremap <silent>ciw "_ciw
  :nnoremap <silent>cl Vy
  :nnoremap <silent>dd "_dd<cr>
  nmap <silent>dts :let _s=@/<bar>:%s/\s\+$//e<bar>:let @/=_s<bar><cr>

  vmap <silent>cl yA<cr>console.log('')<esc>hi<C-o>P<esc>2li, <C-o>P<esc>
  vnoremap <silent>J :m '>+1<cr>gv=gv
  vnoremap <silent>K :m '<-2<cr>gv=gv

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent>st <plug>(easymotion-s2)
  nmap M <Plug>NERDCommenterToggle
  nmap [c <Plug>(GitGutterPrevHunk)
  nmap ]c <Plug>(GitGutterNextHunk)
  nmap ga <Plug>(EasyAlign)
  vmap M <Plug>NERDCommenterToggle
  xmap ga <Plug>(EasyAlign)

  let mapleader = ","
  nmap <leader>diff <Plug>(GitGutterPreviewHunk)
  nmap <leader>dl cl<silent>p
  nmap <leader>hs <Plug>(GitGutterStageHunk)
  nmap <leader>hu <Plug>(GitGutterUndoHunk)
  nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>
  nmap <leader>rcw yiw :%s/
  nmap <leader>ro :so ~/.config/nvim/init.lua<cr>
  nmap <leader>v <C-w>v<cr>
  nmap <leader>vue :set syntax=vue<cr>
  nmap <leader>ts :set syntax=typescript<cr>
  nnoremap <silent> <leader>lg :LazyGit<CR>
  noremap <leader>crp :let @+=expand("%")<cr>
  noremap <leader>crpt :let @+=expand("%:r:r")<cr>
  noremap <leader>gst :GFiles?<cr>
  noremap <leader>reload :source ~/.vimrc<cr>
  noremap <leader>rs :noh<cr>
  noremap <leader>vim :source %<cr>

  xmap <leader>a  <Plug>(coc-codeaction-selected)
  nmap <leader>a  <Plug>(coc-codeaction-selected)
]])
