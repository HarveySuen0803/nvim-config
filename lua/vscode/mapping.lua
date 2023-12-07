local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

vim.g.mapleader = ";"
vim.g.maplocalleader = ";"

map('n', 'u', '<nop>', opt)
map('n', '<S-u>', '<nop>', opt)
map('n', 's', '<nop>', opt)
map('n', 'r', '<nop>', opt)
map('n', 'x', '<nop>', opt)

map("n", "u", ":call VSCodeNotify('undo')<CR>", opt)
map("n", "<S-u>", ":call VSCodeNotify('redo')<CR>", opt)

map('n', '>', '>>', opt)
map('n', '<', '<<', opt)
-- map('v', '>', '>gv', opt)
-- map('v', '<', '<gv', opt)

map('v', ',', '<C-v>', opt)
map('v', '.', '<S-v>', opt)

-- map('n', 'j', ":call VSCodeNotify('cursorDown')<CR>", opt)
-- map("n", "k", ":call VSCodeNotify('cursorUp')<CR>", opt)

map('n', '<PageDown>', '20j', opt)
map('n', '<PageUp>', '20k', opt)
map('v', '<PageDown>', '20j', opt)
map('v', '<PageUp>', '20k', opt)

map('n', '<S-Down>', 'vj', opt)
map('n', '<S-Up>', 'vk', opt)
map('v', '<S-Down>', 'j', opt)
map('v', '<S-Up>', 'k', opt)
map('i', '<S-Down>', ":call VSCodeNotify('cursorDownSelect')<CR>", opt)
map('i', '<S-Up>', ":call VSCodeNotify('cursorUpSelect')<CR>", opt)

map('n', 'x', '"_d', opt)
map('n', 'xx', '"_dd', opt)
map('n', 'X', '"_D', opt)
map('v', 'x', '"_d', opt)
map('v', 'X', '"_D', opt)

map('v', 'c', 's', opt)

map("n", "c]", ":call VSCodeNotify('workbench.action.closeEditorsToTheRight')<CR>", opt)
map("n", "c[", ":call VSCodeNotify('workbench.action.closeEditorsToTheLeft')<CR>", opt)
map("n", "c\\", ":call VSCodeNotify('workbench.action.closeOtherEditors')<CR>", opt)

map("n", "q", ":call VSCodeNotify('workbench.action.files.save')<CR>", opt)
map("n", "Q", ":call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", opt)

map("n", "gd", ":call VSCodeNotify('editor.action.revealDefinition')<CR>", opt)
map("n", "gj", ":call VSCodeNotify('editor.action.goToImplementation')<CR>", opt)
map("n", "gk", ":call VSCodeNotify('editor.action.goToTypeDefinition')<CR>", opt)
map("n", "gh", ":call VSCodeNotify('workbench.action.navigateBack')<CR>", opt)
map("n", "gl", ":call VSCodeNotify('workbench.action.navigateForward')<CR>", opt)
map("n", "ge", ":call VSCodeNotify('editor.action.marker.next')<CR>", opt)
map("n", "gE", ":call VSCodeNotify('editor.action.marker.prev')<CR>", opt)

map("x", "gc", "<Plug>VSCodeCommentary", opt)
map("o", "gc", "<Plug>VSCodeCommentary", opt)
map("n", "gc", "<Plug>VSCodeCommentary", opt)
map("n", "gcc", "<Plug>VSCodeCommentaryLine", opt)

map("n", "mf", ":call VSCodeNotify('editor.action.formatDocument')<CR>", opt)
map("n", "ml", ":call VSCodeNotify('workbench.action.editor.changeLanguageMode')<CR>", opt)
map("n", "mh", ":call VSCodeNotify('editor.action.showHover')<CR>", opt)
map("n", "mp", ":call VSCodeNotify('editor.action.peekDefinition')<CR>", opt)
map("n", "mu", ":call VSCodeNotify('editor.action.peekTypeDefinition')<CR>", opt)
map("n", "mi", ":call VSCodeNotify('editor.action.organizeImports')<CR>", opt)

map("n", "ri", ":call VSCodeNotify('extension.pasteImage')<CR>", opt)
map("n", "rr", ":call VSCodeNotify('code-runner.run')<CR>", opt)
map("n", "rd", ":call VSCodeNotify('mysql.runES')<CR>", opt)

map("n", "se", ":call VSCodeNotify('workbench.view.explorer')<CR>", opt)
map("n", "ss", ":call VSCodeNotify('outline.focus')<CR>", opt)
map("n", "sg", ":call VSCodeNotify('workbench.scm.focus')<CR>", opt)
map("n", "st", ":call VSCodeNotify('terminal.focus')<CR>", opt)
map("n", "sc", ":call VSCodeNotify('workbench.action.closePanel')<CR>", opt)
map("n", "sv", ":call VSCodeNotify('workbench.view.extensions')<CR>", opt)
map("n", "sp", ":call VSCodeNotify('workbench.view.extension.spring')<CR>", opt)

map("n", "zh", ":call VSCodeNotify('workbench.action.focusLeftGroup')<CR>", opt)
map("n", "zl", ":call VSCodeNotify('workbench.action.focusRightGroup')<CR>", opt)

map("n", "zL", ":call VSCodeNotify('workbench.action.splitEditorLeft')<CR>", opt)
map("n", "zH", ":call VSCodeNotify('workbench.action.splitEditorRight')<CR>", opt)
map("n", "zK", ":call VSCodeNotify('workbench.action.splitEditorUp')<CR>", opt)
map("n", "zJ", ":call VSCodeNotify('workbench.action.splitEditorDown')<CR>", opt)

map("n", "zc", ":call VSCodeNotify('editor.fold')<CR>", opt)
map("n", "zo", ":call VSCodeNotify('editor.unfold')<CR>", opt)

map("i", "<C-e>", "<Esc>A", opt)
map("n", "<C-e>", "$", opt)
map("v", "<C-e>", "$h", opt)
map("i", "<C-a>", "<Esc>I", opt)
map("n", "<C-a>", "^", opt)
map("v", "<C-a>", "^", opt)

map("n", "fs", ":call VSCodeNotify('workbench.action.gotoSymbol')<CR>", opt)
map("n", "fe", ":call VSCodeNotify('workbench.action.quickOpen')<CR>", opt)
map("n", "fa", ":call VSCodeNotify('workbench.action.showCommands')<CR>", opt)
map("v", "fa", ":call VSCodeNotify('workbench.action.showCommands')<CR>", opt)

map('n', 'ya', 'ggVGy', opt)
map('n', 'yJ', 'yG', opt)
map('n', 'yK', 'ygg', opt)
map('n', 'yL', 'y$', opt)
map('n', 'yH', 'y^', opt)
map('n', 'da', 'ggVGd', opt)
map('n', 'dJ', 'dG', opt)
map('n', 'dK', 'dgg', opt)
map('n', 'dL', 'd$', opt)
map('n', 'dH', 'd^', opt)
map('n', 'ca', 'ggVGc', opt)
map('n', 'cJ', 'cG', opt)
map('n', 'cK', 'cG', opt)
map('n', 'cL', 'c$', opt)
map('n', 'cH', 'c^', opt)
map('n', 'xa', 'ggVG"_d', opt)
map('n', 'xJ', '"_dG', opt)
map('n', 'xK', '"_dgg', opt)
map('n', 'xL', '"_d$', opt)
map('n', 'xH', '"_d^', opt)

vim.cmd ('autocmd FileType markdown nmap ,c a```')
