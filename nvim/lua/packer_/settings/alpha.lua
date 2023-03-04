-- Don"t use this file... for now...




-- Alpha for NVIM: https://github.com/goolord/alpha-nvim
-- Inspiration taken from showcases shown here:
-- https://github.com/goolord/alpha-nvim/discussions/16

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local logo_1 = {
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@#@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@#@@@@@#%@@@@@#@@@@@@@@@@@@@",
"@@@@@@@@@@@#@@@@@@@@#@@@@@@@#@@@@@@@@@@@", 
"@@@@@@@@@@@@@@@@@@@%%@@@@@@@@%%%@@@@@@@@",
"@@@@@@@@@@&%@@@@@@@%%@@@@@@@@@%%%@@@@@@@",
"@@@@@@@@@@@#%%@@@@@%%@@@@@@%%%%@@@@@@@@@",
"@@@@@@@@@@@@@@#%%%@#%@@@&%%%@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@&%#%#@%%#@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@#%%%%@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@%%%%%#%%%@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@#@@@@%%@@@%%&@@@@@@@@@@@@@",
"@@@@@@@@@&%%%#@@@@@@%@@@@@%%%%%@@@@@@@@@",
"@@@@@@@%@%%@@@@@@@@%%%@@@@@@@#%%%@@@@@@@",
"@@@@@@@@#%%%@@@@@@@%%@@@@@@@#%%%@@@@@@@@",
"@@@@@@@@@@@%@%@@@@@%%#@@@%%%%#@@@@@@@@@@",
"@@@@@@@@@@@@@#%#@@@%%@@##%%&@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@%%%#%%@%%@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@#&@#%%%%@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@&@%#%@#@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@%@%@%@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@#@%@#@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@#@@@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@%@@%@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@%@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@%@&@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@%@@%@#@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@%@@%@%@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@#@@@@#@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@%@@@@@#@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",
}
local logo_2 = {                                       
"                                       ",
"                                       ",
"                   *                   ",
"            *     *,     *             ",
"          *        *       *           ",
"                  ,,        ,,,        ",
"         .,       ,,         ,,,       ",
"          *,,     ,,      ,,,,         ",
"             *,,, *,   .,,,            ",
"               .,*,* ,,*               ",
"                 *,,,,                 ",
"               ,,,,,*,,,               ",
"             *    ,,   ,,.             ",
"        .,,,*      ,     ,,,,,         ",
"      , ,,        ,,,       *,,,       ",
"       *,,,       ,,       *,,,        ",
"          , ,     ,,*   ,,,,*          ",
"            *,*   ,,  **,,.            ",
"              ,,,*,, ,,                ",
"              *. *,,,,                 ",
"               . ,*, *                 ",
"                 , , ,                 ",
"                 * , *                 ",
"                 *                     ",
"                 ,  ,                  ",
"                    ,                  ",
"                    , .                ",
"                 ,  , *                ",
"                 ,  , ,                ",
"                 *    *                ",
"                ,     *                "
}
dashboard.section.header.val = {
    ",                                                  ",
    ",██╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    ",███╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    ",█╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    ",█║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    ",█║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    ",═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    ",                                                  ",
}
dashboard.section.header.val = logo_2
--dashboard.section.header.val = logo_1

-- How to set color.
-- This is done by choosing a/the highlighting groupj
--Most elements accept `opts.hl = "hl_group"` or an array of
--`{'hl_group', start_col, end_col}`

-- https://www.reddit.com/r/neovim/comments/sihuq7/psa_now_you_can_set_global_highlight_groups_ie/
vim.api.nvim_set_hl(0, 'BrandLogo', { fg = "Red"})
local function pick_color()
                local colors = {"String", "Identifier", "Keyword", "Number"}
                return "BrandLogo"--math.random(#colors)		
                --return math.random(#colors)		
            end
dashboard.section.header.opts.hl = pick_color()
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "> New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "> Find file", ":cd $HOME/Workspace | Telescope find_files<CR>"),
    dashboard.button( "r", "> Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "> Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", "> Quit NVIM", ":qa<CR>"),
}

-- Set footer
--   NOTE: This is currently a feature in my fork of alpha-nvim (opened PR #21, will update snippet if added to main)
--   To see test this yourself, add the function as a dependecy in packer and uncomment the footer lines
--   ```init.lua
--   return require("packer').startup(function()
--       use "wbthomason/packer.nvim'
--       use {
--           "goolord/alpha-nvim', branch = 'feature/startify-fortune',
--           requires = {"BlakeJC94/alpha-nvim-fortune'},
--           config = function() require("config.alpha") end
--       }
--   end)
--   ```
-- local fortune = require("alpha.fortune") 
-- dashboard.section.footer.val = fortune()

-- Send config to alpha
--alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
    ]])
