command! SnookerContrastToggle call SnookerContrastToggle()
function! SnookerContrastToggle()
  if !exists('g:snooker_high_contrast') || g:snooker_high_contrast == 0
    let g:snooker_high_contrast = 1
  else
    let g:snooker_high_contrast = 0
  endif
  colorscheme snooker
endfunction
