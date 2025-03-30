if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.java" }, -- add Java language support
  { import = "astrocommunity.lsp.nvim-java" }, -- opt-in to nvim-java for LSP
  { import = "astrocommunity.colorscheme.dracula" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
}
