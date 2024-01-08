return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
				},
			},
			git_status = {
				window = {
					mappings = {
						["gd"] = {
							function(state)
								local node = state.tree:get_node()
                                vim.cmd(":DiffviewFileHistory "..node.path)
							end,
							desc = "Git diff",
						},
					},
				},
			},
		})
	end,
}
