# vim-go

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```
cp .vimrc ~/.vimrc
```

```
:PlugInstall

:GoInstallBinaries
```

```
sudo apt install build-essential cmake python3-dev -y

cd ~/.vim/plugged/YouCompleteMe
# 编译，并加入 go 的支持
python3 install.py --go-completer
```
