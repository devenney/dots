return {
  "neovim/nvim-lspconfig",
  config = function()
    require("lspconfig").lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim" } },
          workspace = {
            checkThirdParty = false,
            library = { vim.env.VIMRUNTIME, "${3rd}/luv/library" },
          },
        },
      },
    })
  end,
}
