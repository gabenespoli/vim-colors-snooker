# Snooker Colorscheme

A 16-color palette and vim colorscheme based on the colors of a snooker table.

## Installation

### in Vim

Vim Plug:
`Plug gabenespoli/vim-colors-snooker`

Apply the colorscheme:
`colorscheme snooker`

### in your terminal

For terminal vim, set your terminal colors to the following values for the dark or light palette.

| Terminal Code | Snooker Color  | General Function       | Hex    | Specific Function              |
| ------------- | -------------- | ---------------------- | ------ | -----------------------------  |
| background    | black ball     | background             | 121615 |                                |
| 0             |                | background (light)     | 2B302B | status bars                    |
| foreground    |                | foreground             | ADAD9B |                                |
| 8             |                | foreground (comments)  | 645E50 | comments, selection background |
| 7             | yellowed white | foreground (light)     | CDC08B | cursor, bold                   |
| 1             | red balls      | red                    | E52E1A | error, operator, delimiter     |
| 2             | baize          | green                  | 25C528 | statement, keyword             |
| 3             | yellow ball    | yellow                 | EBBB2B | type, search background        |
| 4             | blue ball      | blue                   | 0094CF | variable, identifier, function |
| 5             | pink ball      | pink                   | DF7376 | preproc, include               |
| 6             | green ball     | cyan                   | 21C296 | constant, string               |
| 9             | brown ball     | brown                  | B98036 | special                        |
| 10            | (baize)        | (unused)               | 25C528 | (same as 2)                    |
| 11            | (yellow ball)  | (unused)               | EBBB2B | (same as 3)                    |
| 12            | (blue ball)    | (unused)               | 0094CF | (same as 4)                    |
| 13            | (pink ball)    | (unused)               | DF7376 | (same as 5)                    |
| 14            | (green ball)   | (unused)               | 21C296 | (same as 5)                    |
| 15            | cue ball       | foreground (bright)    | FCEDAB | selection foreground, titles   |

## Options

`g:snooker_terminal_italics`: Default 0, only affects terminal vim. Set to 1 if your terminal supports italics. This is really only for comments.

`g:snooker_spell_undercurl`: Default 0, only affects gui vim. Set to 1 to use an undercurl instead of an underline for spelling highlights.

`g:snooker_gui_color_undercurl`: Default 0, only affects gui vim. Set to 1 to color the underline/undercurl for spelling highlights.

`g:snooker_high_contrast`: Default 1 to enable the "inverse" look for diffs and some other elements (where the background is red and the foreground is the background color, for example). Set to 0 to make these elements more subtle by using the "non-inverse" version. A function is provided (see below) to toggle this option.

`g:snooker_color_cursor`: Default 1 for the cursor to be bright foreground, like the cue ball. Set to 0 to make it the foreground color instead.

## Commands

`:SnookerContrastToggle`: A function is provided to toggle between high and low contrast settings. This function just changes the value of the `g:snooker_high_contrast` variable and then calls `:colorscheme snooker`. I use the following mapping (in the style of [vim-unimpaired](https://github.com/tpope/vim-unimpaired)) in my vimrc:

```vim
nnoremap yoC :SnookerContrastToggle()<CR>
```
