" ctrlp.vim

nmap <Space>p :CtrlPMRU<CR>
nmap <Space>P :CtrlPRoot<CR>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.node_modules$\|\.bower_components$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$\|\.min.js$\|\.css$\|\.jpg$\|\.png$\|\.gif$'
  \ }
