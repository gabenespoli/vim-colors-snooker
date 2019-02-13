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

| Code | Terminal Color | Base16 Color           | hex    | Function                      |
| ---- | -------------- | -----------------      | ------ | ----------------------------- |
| 0    | black          | background             | 212524 |                               |
| 10   | bright green   | background (light)     | 243730 | status bars                   |
| 11   | bright yellow  | background (selection) | 284737 | selection background          |
| 8    | bright black   | foreground (comments)  | 5F785C | comments, operator, delimiter |
| 12   | bright blue    | foreground (darker)    | 9BAD9B |                               |
| 7    | white          | foreground             | ADAD9B |                               |
| 13   | bright magenta | foreground (light)     | CDC08B | selection foreground, bold    |
| 15   | bright white   | foreground (bright)    | FCEDAB | titles, status bar foreground |
| 2    | green          | green (baize)          | 25C528 | statement, keyword            |
| 1    | red            | red                    | E52E1A | errors                        |
| 3    | yellow         | yellow                 | EBBB2B | type                          |
| 6    | cyan           | cyan (green ball)      | 21C296 | constant, string              |
| 9    | bright red     | brown                  | B98036 | special                       |
| 4    | blue           | blue                   | 0094CF | identifier, function          |
| 5    | magenta        | pink                   | DF7376 | preproc                       |
| 14   | bright cyan    | pink2                  | C87F7F | todo                          |

## Options

`g:snooker_terminal_italics`: Default 0, only affects terminal vim. Set to 1 if your terminal supports italics.

`g:snooker_spell_undercurl`: Default 1, only affects gui vim. Set to 0 to use an underline instead of an undercurl for spelling highlights.

`g:snooker_high_contrast`: Default 1 to enable the "inverse" look for diffs and some other elements (where the background is red and the foreground is the background color, for example). Set to 0 to make these elements more subtle by using the "non-inverse" version.

`g:snooker_color_cursor`: Default 0 for the cursor to be the foreground color. Set to 1 for the cursor to be blue.

## Commands

`:SnookerContrastToggle`: A function is provided to toggle between high and low contrast settings. This function just changes the value of the `g:snooker_high_contrast` variable and then calls `:colorscheme snooker`. I use the following mapping in my vimrc:

```vim
nnoremap yoC :SnookerContrastToggle()<CR>
```
