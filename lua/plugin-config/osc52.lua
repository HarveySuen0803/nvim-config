require('osc52').setup {
    max_length = -1,      -- Maximum length of selection (0 for no limit)
    silent     = false,  -- Disable message on successful copy
    trim       = false,  -- Trim surrounding whitespaces before copy
}

-- vim.keymap.set('n', '<leader>y', require('osc52').copy_operator, {expr = true})
-- vim.keymap.set('v', '<leader>y', require('osc52').copy_visual)

local function copy(lines, _)
  require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
  return {vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('')}
end

vim.g.clipboard = {
  name = 'osc52',
  copy = {['+'] = copy, ['*'] = copy},
  paste = {['+'] = paste, ['*'] = paste},
}

-- Now the '+' register will copy to system clipboard using OSC52
-- vim.keymap.set('n', '<leader>c', '"+y')
-- vim.keymap.set('n', '<leader>cc', '"+yy')
