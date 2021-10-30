# sakura
![2021-10-31_02-25](https://user-images.githubusercontent.com/52068717/139543054-800d06bd-f917-47eb-acae-84dff9aa4a6e.png)


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
