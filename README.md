# sakura
![2022-11-24_16-47](https://user-images.githubusercontent.com/52068717/203727649-ccbf4c45-d6ca-49db-93bf-f665ae82b8ae.png)

# Installation
Example (Vundle):   
   
Put this in your ```.vimrc```.
```
Plugin 'is-hoku/sakura'
```
Launch vim and run ```:PluginInstall```.

# Setting
Set up True Color in ```.vimrc```   
```
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
```

And, install Vim with a GUI (ex. GVim, MacVim...)   
