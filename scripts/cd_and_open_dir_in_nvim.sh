

path=$(find /mnt/hp_second/Documents/ ~/.config/ ~/Documents/ ~/Downloads/ -type d -print | fzf)

cd $path

nvim $path

