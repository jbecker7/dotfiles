return {
  {
      'MeanderingProgrammer/render-markdown.nvim',
      dependencies = {
          'nvim-treesitter/nvim-treesitter', -- Treesitter for syntax highlighting
          'echasnovski/mini.nvim', -- If using the full mini.nvim suite
          -- Alternatively:
          -- 'echasnovski/mini.icons', -- Standalone mini.icons plugin
          -- Or:
          -- 'nvim-tree/nvim-web-devicons', -- Devicons for file icons
      },
      opts = {
          checkbox = {
              enabled = true,
              position = 'inline',
              unchecked = {
                  icon = '󰄱 ',
                  highlight = 'RenderMarkdownUnchecked',
                  scope_highlight = nil,
              },
              checked = {
                  icon = '󰱒 ',
                  highlight = 'RenderMarkdownChecked',
                  scope_highlight = nil,
              },
              custom = {
                  todo = { raw = '[-]', rendered = '󰥔 ', highlight = 'RenderMarkdownTodo', scope_highlight = nil },
              },
          },
      },
      ft = "markdown", -- Load only for Markdown files
  },
}
