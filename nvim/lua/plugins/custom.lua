return {
    {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local M = {}
  
        function M.insert_file_links()
            local current_file = vim.fn.expand('%:p') -- Full path of current file
            local current_dir = vim.fn.fnamemodify(current_file, ':h') -- Extract directory
            local files = vim.fn.globpath(current_dir, '*', false, true) -- Get files
  
            if #files == 0 then
                print("No files found in directory.")
                return
            end
  
            local links = {}
            for _, file in ipairs(files) do
                if file ~= current_file then -- Exclude current file
                    local filename = vim.fn.fnamemodify(file, ':t') -- Get filename
                    table.insert(links, "- [" .. filename .. "](" .. filename .. ")") -- Markdown format
                end
            end
  
            vim.api.nvim_put(links, 'l', true, true) -- Paste links at cursor position
        end
  
        -- Create Neovim command
        vim.api.nvim_create_user_command('InsertLinks', M.insert_file_links, {})
  
        return opts
      end,
    },
  }
  