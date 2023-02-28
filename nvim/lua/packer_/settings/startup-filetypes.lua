


-- Faster startup with filetype

require("filetype").setup({
	        literal = {
            -- Set the filetype of files named "MyBackupFile" to lua
            MyBackupFile = "lua",
        },
        complex = {
            -- Set the filetype of any full filename matching the regex to gitconfig
            [".*git/config"] = "gitconfig", -- Included in the plugin
        },
})
