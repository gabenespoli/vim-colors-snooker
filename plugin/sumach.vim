command! SumachContrastToggle call SumachContrastToggle()
function! SumachContrastToggle()
  if g:sumach_high_contrast == 1
    let g:sumach_high_contrast = 0
  else
    let g:sumach_high_contrast = 1
  endif
  colorscheme sumach
endfunction
