#!/usr/bin/env bash
cd "$(dirname "${0}")"

#   
#    ██████╗ ██████╗ ███╗   ███╗███╗   ███╗██╗███████╗███████╗██╗ ██████╗ ███╗   ██╗         ██╗██╗   ██╗███╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗
#   ██╔════╝██╔═══██╗████╗ ████║████╗ ████║██║██╔════╝██╔════╝██║██╔═══██╗████╗  ██║         ██║██║   ██║████╗  ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
#   ██║     ██║   ██║██╔████╔██║██╔████╔██║██║███████╗███████╗██║██║   ██║██╔██╗ ██║         ██║██║   ██║██╔██╗ ██║██║        ██║   ██║██║   ██║██╔██╗ ██║
#   ██║     ██║   ██║██║╚██╔╝██║██║╚██╔╝██║██║╚════██║╚════██║██║██║   ██║██║╚██╗██║    ██   ██║██║   ██║██║╚██╗██║██║        ██║   ██║██║   ██║██║╚██╗██║
#   ╚██████╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║██║███████║███████║██║╚██████╔╝██║ ╚████║    ╚█████╔╝╚██████╔╝██║ ╚████║╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
#    ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝╚═╝╚══════╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝     ╚════╝  ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
#                                                                                                                                                         

install() {
	if brew list $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	brew install $1
    fi
}

install_cask() {
	if brew list --cask $1 &> /dev/null; then
  		echo "==> "$1" [installed]"
	else
    	echo "==> "$1
    	brew install --cask $1
    fi
}

##########################################################
brew tap InstantClientTap/instantclient
#install parquet-tools
install aws-cdk
install awscli
install awscli@1
install cassandra
install clojure
install kafka
install koekeishiya/formulae/skhd  && brew services start skhd
install koekeishiya/formulae/yabai && brew services start yabai
install maven
install maven-completion
install selenium-server-standalone

install_cask instantclient-basic
install_cask instantclient-sqlplus
install_cask intellij-idea
install_cask keybase
