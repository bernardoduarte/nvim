return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	fpts = {},
    config = function()
        require("ibl").setup()
    end
}
