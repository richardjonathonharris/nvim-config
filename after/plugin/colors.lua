
function ColorMyPencils(color)
	color = color or "kanagawa"
	vim.cmd.colorscheme(color) -- sets the color scheme

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" }) -- sets  background color to none for all windows
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) -- sets background color on all floats to none

end

ColorMyPencils()
