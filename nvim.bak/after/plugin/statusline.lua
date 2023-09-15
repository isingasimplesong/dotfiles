-- status line

-- Airline
-- vim.cmd([[let g:airline_theme='base16_nord']])
-- vim.cmd([[let g:airline#extensions#tabline#enabled = 1]])

-- Lualine (commenter une des deux config) 
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    -- theme = 'material',
    -- component_separators = { left = '', right = ''},
    -- section_separators = { left = '', right = ''},
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding'},
    lualine_y = {'filetype'},
    lualine_z = {'fileformat','hostname'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
      lualine_a = {
      { 
        'buffers',
        show_filename_only = true,
        show_modified_status = true,
        mode = 0, -- 0 : buffer name
                  -- 1 : buffer index
                  -- 2 : name + index
                  -- 3 : number
                  -- 4 : name + number
        filetype_names = { 
          TelescopePrompt = 'Telescope',
          dashboard = 'Dashboard',
          packer = 'Packer',
          fzf = 'FZF',
          alpha = 'Alpha'
        }

      }
    },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'location', 'progress'}
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
