# Snooker Colorscheme

A 16-color palette and vim colorscheme based on the colors of a snooker table.

## Installation

### in Vim

Vim Plug:
`Plug gabenespoli/vim-colors-snooker`

Apply the colorscheme:
`colorscheme snooker`

### in your terminal

For terminal vim, set your terminal colors to the following values for the dark or light palette. This palette follows [Base16](https://github.com/chriskempson/base16). If you are using iTerm you can get the .itermcolors file from [this repo](https://github.com/gabenespoli/iterm-color-palettes).

| Terminal Code | Snooker Color  | Base16 Color           | Hex    | Function                       |
| ------------- | -------------- | ---------------------- | ------ | -----------------------------  |
| 0             |                | background             | 212524 |                                |
| 10            |                | background (light)     | 2B302B | status bars                    |
| 11            |                | background (selection) | 32362E | selection background           |
| 8             |                | foreground (comments)  | 645E50 | comments                       |
| 12            |                | foreground (darker)    | 5F785C |                                |
| 7             |                | foreground             | ADAD9B |                                |
| 13            |                | foreground (light)     | CDC08B | selection foreground, bold     |
| 15            | cue ball       | foreground (bright)    | FCEDAB | titles, status bar foreground  |
| 2             | baize          | green                  | 25C528 | statement, keyword             |
| 1             | red balls      | red                    | E52E1A | error, operator, delimiter     |
| 3             | yellow ball    | yellow                 | EBBB2B | type                           |
| 6             | green ball     | cyan                   | 21C296 | constant, string               |
| 9             | brown ball     | brown                  | B98036 | special                        |
| 4             | blue ball      | blue                   | 0094CF | variable, identifier, function |
| 5             | pink ball      | pink                   | DF7376 | preproc, include               |
| 14            |                | table                  | 5D4124 | todo                           |

## Options

`g:snooker_terminal_italics`: Default 0, only affects terminal vim. Set to 1 if your terminal supports italics. This is really only for comments.

`g:snooker_spell_undercurl`: Default 1, only affects gui vim. Set to 0 to use an underline instead of an undercurl for spelling highlights.

`g:snooker_high_contrast`: Default 1 to enable the "inverse" look for diffs and some other elements (where the background is red and the foreground is the background color, for example). Set to 0 to make these elements more subtle by using the "non-inverse" version. A function is provided (see below) to toggle this option.

`g:snooker_color_cursor`: Default 1 for the cursor to be bright foreground, like the cue ball. Set to 0 to make it the foreground color instead.

## Commands

`:SnookerContrastToggle`: A function is provided to toggle between high and low contrast settings. This function just changes the value of the `g:snooker_high_contrast` variable and then calls `:colorscheme snooker`. I use the following mapping (in the style of [vim-unimpaired](https://github.com/tpope/vim-unimpaired)) in my vimrc:

```vim
nnoremap yoC :SnookerContrastToggle()<CR>
```
