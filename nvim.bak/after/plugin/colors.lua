function SetColorScheme(color)
	color = color or "onenord"
	vim.cmd.colorscheme(color)
end

SetColorScheme()
