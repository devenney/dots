return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "│" },
      scope = { enabled = true },
    },
    config = function(_, opts)
      -- set up indent guides + scope
      require("ibl").setup(opts)

      -- basic trailing whitespace highlight
      vim.api.nvim_set_hl(0, "ExtraWhitespace", { bg = "Red" })
      vim.fn.matchadd("ExtraWhitespace", [[\s\+$]])
    end,
  },
}
