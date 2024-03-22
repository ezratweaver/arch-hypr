-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting


lvim.plugins =
{
  { 'navarasu/onedark.nvim' },
  { 'abecodes/tabout.nvim' },
  { 'xiyaowong/transparent.nvim' },
  { 'miikanissi/modus-themes.nvim' },
  { 'folke/lsp-colors.nvim' },
}


lvim.colorscheme = "modus" -- Set OneDark to the default theme

-- lvim.transparent_window = true

lvim.builtin.which_key.mappings["ss"] = {
  "<cmd>Telescope current_buffer_fuzzy_find<cr>", "Single file search" }
-- require('tabout').setup { tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
--     backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
--     act_as_tab = true, -- shift content if tab out is not possible
--     act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
--     default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
--     default_shift_tab = '<C-d>', -- reverse shift default action,
--     enable_backwards = true, -- well ...
--     completion = true, -- if the tabkey is used in a completion pum
--     tabouts = {
--       {open = "'", close = "'"},
--       {open = '"', close = '"'},
--       {open = '`', close = '`'},
--       {open = '(', close = ')'},
--       {open = '[', close = ']'},
--       {open = '{', close = '}'}
--     },
--     ignore_beginning = false, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
--     exclude = { ".html" } -- tabout will ignore these filetypes
-- }


lvim.builtin.which_key.mappings["t"] = {
  name = "+Terminal",
  f = { "<cmd>ToggleTerm<cr>", "Floating terminal" },
  v = { "<cmd>2ToggleTerm size=30 direction=vertical<cr>", "Split vertical" },
  h = { "<cmd>2ToggleTerm size=30 direction=horizontal<cr>", "Split horizontal" },
}

require('transparent').setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer', 'NormalSB', 'Pmenu',
  },
  extra_groups = { -- table: additional groups that should be cleared
    'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
    'FloatBorder',
    'NvimTreeWinSeparator',
    'NvimTreeNormal',
    'NvimTreeNormalNC',
    'NeoTree',
    'TroubleNormal',
    'TelescopeNormal',
    'TelescopeBorder',
    'WhichKeyFloat',

    'NotifyINFOBody',
    'NotifyERRORBody',
    'NotifyWARNBody',
    'NotifyDEBUGBody',
    'NotifyTRACEBody',
    'NotifyINFOBorder',
    'NotifyERRORBorder',
    'NotifyWARNBorder',
    'NotifyDEBUGBorder',
    'NotifyTRACEBorder',
  },
  exclude_groups = {}, -- table: groups you don't want to clear
})

require('transparent').clear_prefix('NeoTree')

vim.cmd("imap <C-c> <Esc>")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    -- delay update diagnostics
    update_in_insert = true,
  }
)

lvim.keys.normal_mode["<C-A-k>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<C-A-j>"] = ":BufferLineCyclePrev<CR>"



