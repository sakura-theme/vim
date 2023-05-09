# sakura for Vim

sakura theme for Vim.

![2022-11-24_16-47](https://user-images.githubusercontent.com/52068717/203727649-ccbf4c45-d6ca-49db-93bf-f665ae82b8ae.png)

## Palette
![palette](https://user-images.githubusercontent.com/52068717/204466644-1c2b2b60-6ade-40ae-83af-7c5496a88b89.png)

## Installation
Example (Vundle):   
   
Put this in your ```.vimrc```.
```
Plugin 'sakura-theme/vim'
```
Launch vim and run ```:PluginInstall```.

## Setting
Set up True Color in ```.vimrc```   
```
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```
