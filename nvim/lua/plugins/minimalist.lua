-- minimalist colorscheme configuration
-- Matching sketchybar color palette

return {
  {
    "AstroNvim/astroui",
    opts = {
      -- Use a dark minimalist theme
      colorscheme = "astrodark",
      highlights = {
        init = {
          -- Base colors matching sketchybar
          Normal = { bg = "#0a0a0a", fg = "#f5f5f5" },
          NormalFloat = { bg = "#1e1e1e", fg = "#f5f5f5" },
          NormalNC = { bg = "#0a0a0a", fg = "#6b6b6b" },
          
          -- Statusline and UI
          StatusLine = { bg = "#1e1e1e", fg = "#f5f5f5" },
          StatusLineNC = { bg = "#1a1a1a", fg = "#6b6b6b" },
          WinSeparator = { fg = "#1e1e1e" },
          
          -- Cursor and selection
          CursorLine = { bg = "#1e1e1e" },
          CursorLineNr = { fg = "#d4af37", bold = true },
          Visual = { bg = "#1e1e1e", fg = "#f5f5f5" },
          
          -- Syntax highlighting with minimalist theme colors
          Comment = { fg = "#6b6b6b", italic = true },
          String = { fg = "#f5f5f5" },
          Number = { fg = "#d4af37" },
          Boolean = { fg = "#d4af37" },
          Function = { fg = "#f5f5f5" },
          Keyword = { fg = "#c8102e" },
          Type = { fg = "#d4af37" },
          Constant = { fg = "#d4af37" },
          Identifier = { fg = "#f5f5f5" },
          
          -- Special highlights
          Error = { fg = "#c8102e" },
          WarningMsg = { fg = "#d4af37" },
          Info = { fg = "#d4af37" },
          
          -- Pmenu (popup menu)
          Pmenu = { bg = "#1e1e1e", fg = "#f5f5f5" },
          PmenuSel = { bg = "#1a1a1a", fg = "#f5f5f5" },
          PmenuSbar = { bg = "#1e1e1e" },
          PmenuThumb = { bg = "#6b6b6b" },
          
          -- Line numbers
          LineNr = { fg = "#6b6b6b" },
          CursorLineNr = { fg = "#d4af37", bold = true },
          
          -- Diff
          DiffAdd = { fg = "#6b6b6b" },
          DiffChange = { fg = "#d4af37" },
          DiffDelete = { fg = "#c8102e" },
          
          -- Search
          Search = { bg = "#1e1e1e", fg = "#d4af37" },
          IncSearch = { bg = "#d4af37", fg = "#0a0a0a" },
        },
        astrodark = {
          -- Override astrodark specific highlights
          Normal = { bg = "#0a0a0a", fg = "#f5f5f5" },
        },
      },
    },
  },
}
