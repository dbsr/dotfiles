" quick normal mode
nnoremap ; :
vnoremap ; :

" save / quit
nmap <Space>q :q<CR>
nmap <Space>qq :q!<CR>
nmap <Space>w :w!<CR>
nmap <Space>wq :wq!<CR>
nmap <Space>qa :qa!<CR>

" copy / paste
inoremap <C-v> <ESC>:set paste<CR>"+gp<ESC>:set nopaste<ENTER>i<RIGHT>
vnoremap <C-c> "+y
