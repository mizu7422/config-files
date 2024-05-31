-- Enable autopairs
require('nvim-autopairs').setup()

-- Set rules if needed
local npairs = require('nvim-autopairs')

-- You can also use the autopairs add-ons to handle more complex situations.
-- For example, to enable autopairs for markdown files.
npairs.setup({
  disable_filetype = { "TelescopePrompt" },
  ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
  enable_moveright = true,
  enable_afterquote = true, -- add bracket pairs after quote
  enable_check_bracket_line = true, -- check bracket in same line
})

