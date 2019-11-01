for filename in split(globpath('$HOME/.vimrc.d', '*.vim'), '\n')
	:execute 'source '.fnameescape(filename)
endfor
