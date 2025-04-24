return {
  'yetone/avante.nvim',
  event = 'VeryLazy',
  version = false, -- Never set this value to "*"! Never!

  opts = {
    provider = 'openai', -- default provider

    -- models
    openai = {
      endpoint = 'https://api.openai.com/v1',
      model = 'gpt-4.1',
      timeout = 60000, -- Timeout in milliseconds, increase this for reasoning models
      temperature = 0,
      max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
      --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
    },

    claude = {
      endpoint = 'https://api.anthropic.com',
      model = 'claude-3-5-sonnet-latest',
      temperature = 0,
      max_tokens = 8192,
    },

    vendors = {

      gpt41nano = {
        __inherited_from = 'openai',
        model = 'gpt-4.1-nano', -- your desired model (or use gpt-4o, etc.)
      },

      gpt41mini = {
        __inherited_from = 'openai',
        model = 'gpt-4.1-mini', -- your desired model (or use gpt-4o, etc.)
      },

      o4mini = {
        -- erreur fonction python !?
        __inherited_from = 'openai',
        model = 'o4-mini', -- your desired model (or use gpt-4o, etc.)
      },

      claude37 = {
        __inherited_from = 'claude',
        model = 'claude-3-7-sonnet-latest',
      },

      gemini25pro = {
        __inherited_from = 'gemini',
        model = 'gemini-2.5-pro-exp-03-25',
      },

      llamaverick = {
        __inherited_from = 'openai',
        api_key_name = 'GROQ_API_KEY',
        endpoint = 'https://api.groq.com/openai/v1/',
        model = 'meta-llama/llama-4-maverick-17b-128e-instruct',
      },

      deepseek70b = {
        __inherited_from = 'openai',
        api_key_name = 'GROQ_API_KEY',
        endpoint = 'https://api.groq.com/openai/v1/',
        model = 'deepseek-r1-distill-llama-70b',
      },

      deepseekcoder = {
        __inherited_from = 'openai',
        api_key_name = 'DEEPSEEK_API_KEY',
        endpoint = 'https://api.deepseek.com',
        model = 'deepseek-coder',
      },

      deepseekchat = {
        __inherited_from = 'openai',
        api_key_name = 'DEEPSEEK_API_KEY',
        endpoint = 'https://api.deepseek.com',
        model = 'deepseek-chat',
      },
    },
  },

  build = 'make',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'stevearc/dressing.nvim',
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
    --- optional
    'echasnovski/mini.pick', -- for file_selector provider mini.pick
    'nvim-telescope/telescope.nvim', -- for file_selector provider telescope
    'hrsh7th/nvim-cmp', -- autocompletion for avante commands and mentions
    'ibhagwan/fzf-lua', -- for file_selector provider fzf
    'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
    'zbirenbaum/copilot.lua', -- for providers='copilot'
    {
      -- support for image pasting
      'HakonHarnes/img-clip.nvim',
      event = 'VeryLazy',
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_types = { 'markdown', 'Avante' },
      },
      ft = { 'markdown', 'Avante' },
    },
  },
}
