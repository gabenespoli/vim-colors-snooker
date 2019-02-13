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

TODO: update this table, the colors are from a previous colorscheme right now.

| Code | Color          | Scheme Color       | dark   | light  | Function                      |
| ---- | -------------- | -----------------  | ------ | ------ | ----------------------------- |
| 0    | black          | background         | 1c1c1c | ffffff |                               |
| 1    | red            | red                | c34b4b | ff4b4b | errors                        |
| 2    | green          | green              | 7d7d37 | 879b37 | statement, keyword            |
| 3    | yellow         | yellow/orange      | c38737 | eb8700 | type                          |
| 4    | blue           | blue               | 37879b | 3773ff | identifier, function          |
| 5    | magenta        | purple             | 786ea7 | 9b5fff | preproc                       |
| 6    | cyan           | cyan               | 4b875f | 37915f | constant, string              |
| 7    | white          | foreground         | 808080 | 3a3a3a |                               |
| 8    | bright black   | darker foreground  | 585858 | 8a8a8a | comments, operator, delimiter |
| 9    | bright red     | orange/brown       | af5f37 | 9b5f00 | special                       |
| 10   | bright green   | light background   | 2b2b2b | ebebeb | status bars                   |
| 11   | bright yellow  | lighter background | 3a3a3a | dadada | selection background          |
| 12   | bright blue    | dark foreground    | 767676 | 9e9e9e |                               |
| 13   | bright magenta | light foreground   | a39e99 | 1c1c1c | selection foreground, bold    |
| 14   | bright cyan    | pink               | af6487 | ff739b | todo                          |
| 15   | bright white   | bright foreground  | bcb2a8 | 000000 | titles, status bar foreground |

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
