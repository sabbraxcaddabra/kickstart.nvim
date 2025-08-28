-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  opts = {},
  config = function(_, opts)
    local npairs = require 'nvim-autopairs'
    local Rule = require 'nvim-autopairs.rule'
    local cond = require 'nvim-autopairs.conds'
    npairs.setup(opts)
    npairs.add_rules {
      -- одиночный $
      Rule('$', '$', { 'plaintex', 'typst' }):with_pair(cond.not_before_text '\\'), -- не парить \$
      -- двойной $$
      Rule('$$', '$$', 'plaintex'),
    }
  end,
}
