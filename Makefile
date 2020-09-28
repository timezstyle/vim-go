GO_VERSION = go1.15.2.linux-amd64.tar.gz 

install:
	# apt update
	apt update -y

	# 安裝golang
	wget https://golang.org/dl/${GO_VERSION}
	tar -C /usr/local -xzf ${GO_VERSION}
	rm -rf ${GO_VERSION}
	echo 'export GOPATH=$$HOME/go' >> ~/.profile
	echo 'export GOROOT=/usr/local/go' >> ~/.profile
	echo 'export PATH=$$PATH:$$GOROOT/bin:$$GOPATH/bin' >> ~/.profile
	
	# copy vimrc
	cp vimrc ~/.vimrc

	# 安裝 插件
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

	# 安裝 vim plugin
	vim +PlugInstall +GoInstallBinaries +qall
	
	# 安裝 YouCompleteMe
	sudo apt install build-essential cmake python3-dev
	# 編譯 加入go的支持
	cd ~/.vim/plugged/YouCompleteMe; python3 install.py --go-completer

