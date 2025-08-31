-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
--
 vim.g.python3_host_prog = os.getenv("HOME") .. "/.venvs/neovim/bin/python3"

-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- Remap arrow keys to do nothing
vim.api.nvim_set_keymap('n', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Right>', '<Nop>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<Up>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Down>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Left>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<Right>', '<Nop>', { noremap = true, silent = true })


vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>x', ':.lua<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('v', '<space>x', ':.lua<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<space><space>x', '<cmd>source %<CR>', {noremap=true, silent=true})


vim.keymap.set('v', '<space>p', function()
  -- Get selected lines
  local start_line = vim.fn.getpos("'<")[2]
  local end_line = vim.fn.getpos("'>")[2]
  local lines = vim.fn.getline(start_line, end_line)
  local code = table.concat(lines, "\n")

  -- Run Python directly with `python3 -c` preserving indentation
  local handle = io.popen(string.format("python3 - <<'EOF'\n%s\nEOF", code))
  local result = handle:read("*a")
  handle:close()

  if result == "" then result = "[No output]" end

  -- Create floating window for output
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, vim.split(result, "\n"))
  local width = math.floor(vim.o.columns * 0.6)
  local height = math.floor(vim.o.lines * 0.3)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'rounded'
  })
end, { noremap = true, silent = true })



-- Setting the wiki root directory
vim.g.wiki_root = '~/wikivim'

-- vim.filetype.add({
--   extension = {
--     frg = function(path, bufnr)
--       return "forge", function(bufnr)
--         -- for https://neovim.io/doc/user/various.html#commenting
--         vim.api.nvim_set_option_value("commentstring", "// %s", { buf = bufnr })
--       end
--     end,
--   },
-- })

vim.filetype.add({
  extension = {
    frg = "forge",
  }
})

require "lazy_setup"
require "polish"
require'lspconfig'.lua_ls.setup{}
