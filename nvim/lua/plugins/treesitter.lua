-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "latex",
    },
    -- parser_install_dir = "/Users/jcb/tree-sitter-forge",
    -- parser_config = {
    --   forge = {
    --     install_info = {
    --       url = "/Users/jcb/tree-sitter-forge", -- path to the cloned tree-sitter-forge
    --       files = {"src/parser.c"},
    --     },
    --   },
    -- },
  },
}
