return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.icons" },
    ft = { "markdown", "Avante" },
    opts = {
      anti_conceal = {
        enabled = false,
      },
      sign = {
        enabled = false,
      },
      heading = {
        position = "inline",
        width = "block",
      },
      code = {
        conceal_delimiters = true,
      },
    },
    keys = {
      {
        "<C-M-l>",
        "<cmd>RenderMarkdown toggle<CR>",
        desc = "Toggle Markdown Render",
      },
    },
  },
}
