require 'plugins'

-- Colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme tokyonight]]
vim.cmd [[highlight link CompeDocumentation NormalFloat]]

vim.g.t_Co = 256

-- Lightline
vim.g.lightline = {
    colorscheme = 'tokyonight',
    active = {
        left = {
            {'mode', 'paste'}, {'gitbranch', 'readonly', 'filename', 'modified'}
        }
    },
    component_function = {gitbranch = 'fugitive#head'}
}
-- Format on save
-- vim.api.nvim_command("au BufWrite * :TSLspOrganizeSync")
vim.api.nvim_command("au BufWrite * :Neoformat")

-- Vimspector
vim.cmd [[ let g:vimspector_enable_mappings = 'VISUAL_STUDIO' ]]

require 'mappings'
require 'opts'
