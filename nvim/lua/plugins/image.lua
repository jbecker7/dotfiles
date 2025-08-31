return {
  "3rd/image.nvim",
  build = false, -- disables rockspec building
  opts = {
    backend = "kitty", -- or "ueberzug" if you're not using Kitty
    processor = "magick_cli", -- or "magick_rock" if you use LuaRocks
    integrations = {
      markdown = {
        enabled = true,
        clear_in_insert_mode = false,
        download_remote_images = true,
        only_render_image_at_cursor = false,
        only_render_image_at_cursor_mode = "popup",
        floating_windows = false,
        filetypes = { "markdown", "vimwiki" },
      },
      neorg = {
        enabled = true,
        filetypes = { "norg" },
      },
      typst = {
        enabled = true,
        filetypes = { "typst" },
      },
    },
    max_height_window_percentage = 50,
    window_overlap_clear_enabled = false,
    hijack_file_patterns = { "*.png", "*.jpg", "*.jpeg", "*.gif", "*.webp", "*.avif" },
  },
  config = function(_, opts)
    require("image").setup(opts)
  end,
}

