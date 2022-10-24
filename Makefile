config-path := ~/.config/nvim
link:
	[ -d $(config-path) ] || ln --symbolic $(realpath .) $(config-path)
