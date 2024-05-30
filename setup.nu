let isWindows = (sys).host.name == 'Windows'

#Try setup starship
if ((which starship) | length) > 0 {
	mkdir ~/.cache/starship
	mkdir ~/.config
	cp ./configs/starship.toml ~/.config/starship.toml
	starship init nu | save -f ~/.cache/starship/init.nu
}

#Copy nushell config
cp ./configs/config.nu $nu.config-path


#Nvim Config
if $isWindows {
	mkdir ($env.LOCALAPPDATA + \nvim)
	cp ./configs/init.lua ($env.LOCALAPPDATA + \nvim)
} else {
	mkdir ~/.config/nvim
	cp ./configs/init.lua ~/.config/nvim
}
