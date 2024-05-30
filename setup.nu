let isWindows = (sys).host.name == 'Windows'

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
