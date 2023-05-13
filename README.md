# sakura for Vim

🌸 sakura theme for Vim

![screenshot](https://github.com/sakura-theme/vim/blob/main/screenshot.png)

## Palette
![palette](https://github.com/sakura-theme/vim/blob/main/palette.png)

## Installation
Example (Vundle):   
   
Put this in your ```.vimrc```.
```
Plugin 'sakura-theme/vim'
```
Launch vim and run ```:PluginInstall```.

## Setting
Set up True Color in ```.vimrc```.
```
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```
