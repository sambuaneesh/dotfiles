return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Load before other plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
--      integrations = {
--        treesitter = true,
--        lualine = true,
--        telescope = true,
--        nvimtree = true,
--        which_key = true,
--      },
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}
