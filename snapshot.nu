let isWindows = (sys host).name == 'Windows'

cp ~/.config/starship.toml ./configs/starship.toml

#Copy nushell config
cp $nu.config-path ./configs/config.nu

#Nvim Config
if $isWindows {
	cp ($env.LOCALAPPDATA + \nvim\init.lua) ./configs/init.lua
} else {
	cp ~/.config/nvim ./configs/init.lua
}
