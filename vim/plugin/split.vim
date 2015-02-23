fu! SwitchExpandViewport()
    :wincmd w
      :vertical res 120<CR>
endfunction

map <leader>S :vsplit<CR>
nnoremap <silent> <Tab> :call SwitchExpandViewport()<CR>
