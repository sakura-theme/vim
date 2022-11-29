# sakura
<div align="center">
<img src="https://user-images.githubusercontent.com/52068717/204438859-7870cfb4-33f9-45b5-93e2-f2750dff4439.png">
</div>

sakura is a beautiful and easy-to-see color scheme for Vim which inspired by Japanese cherry blossoms.

![2022-11-24_16-47](https://user-images.githubusercontent.com/52068717/203727649-ccbf4c45-d6ca-49db-93bf-f665ae82b8ae.png)

## Palette
![palette](https://user-images.githubusercontent.com/52068717/204466644-1c2b2b60-6ade-40ae-83af-7c5496a88b89.png)

## Installation
Example (Vundle):   
   
Put this in your ```.vimrc```.
```
Plugin 'is-hoku/sakura'
```
Launch vim and run ```:PluginInstall```.

## Setting
Set up True Color in ```.vimrc```   
```
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

And, install Vim with a GUI (ex. GVim, MacVim...)   
