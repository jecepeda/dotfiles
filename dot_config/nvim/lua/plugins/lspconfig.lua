return {
  { "Shopify/shadowenv.vim", lazy = false, cond = vim.fn.executable("shadowenv") == 1 },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {},
        sorbet = {},
      },
      setup = {
        sorbet = function()
          local function sorbet_root_pattern(...)
            local patterns = { "sorbet/config" }
            return require("lspconfig.util").root_pattern(unpack(patterns))(...)
          end

          local srb_command = vim.fn.getcwd() .. "/bin/srb"

          require("lspconfig").sorbet.setup({
            cmd = { srb_command, "tc", "--lsp" },
            filetypes = { "ruby" },
            root_dir = function(fname)
              return sorbet_root_pattern(fname)
            end,
          })
        end,
      },
    },
  },
}
