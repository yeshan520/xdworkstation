#!/bin/bash

handle_fzf_view() {
	line="export FZF_DEFAULY_OPTS=\"--height 40% --layout=reverse --preview 'cat {} 2>/dev/null | head -500'\""
	file=$HOME/.bashrc
	lno=""

	lno=$(\grep -nF "$line" "$file")

	if [ -z "$lno" ]; then
		echo >> "$file"
		echo "$line" >> "$file"
		echo >> "$file"
	fi
}

handle_vimrc() {
	srcfile=/opt/xdtool/vimrc
	dstfile=$HOME/.vimrc
	bakfile=$HOME/.vimrc.bak

	if [ -f $dstdile ]; then
		if [ ! -f $bakfile ]; then
			cp -f $dstfile $bakfile
		fi
	fi
	cp -f $srcfile $dstfile
}

handle_plugged() {
	srcfile=/opt/xdtool/vim.tar.gz

    tar -zxvf $srcfile -C $HOME
}

handle_fzf_view
handle_vimrc
handle_plugged

