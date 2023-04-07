
This lua configuration is heavily inspired by [lesvim](https://github.com/MiaadTeam/lesvim) and also [ThePrimeagen](https://github.com/ThePrimeagen/init.lua)


# Setup

This directory should be a directory in `~/.config/` (Linux), `~/AppData/Local/` [link](https://www.reddit.com/r/neovim/comments/hd8heg/neovim_initvim_config_file_location_on_windows/)

### The after directory runs after init and all others have been run.. 

Packages are searched after in the following places: 
Linux
> ~/.local/share/nvim/site/pack/packer/start/packer.nvim
Windows
> "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"


# Keymappings
General bindings.. the specific mode these bindings work is something you'll have 
to look up. hah!

- Leader `<space>`
- Exit file to "files" (not Tree..)
- Start of file `gg`
- End of file  `G`
- (V) Move marked rows up and down
	- Up `K`
	- Down `J`
- Paste text without copy underlying: `<leader>p`
- Copy/Yank to clippboard `<leader>y`
- Copy entire row `<leader>Y`
- Delete characters/rows before/after `<leader>d`
- Paste from clippboard  `<leader>p`
- Exit insert mode `jk`
- Remove keymapping from the following `Q`, `Tab+c+c`, `Tab+c+o`, `<leader>f`
- Delete whitespace to first character [`dw`](https://vi.stackexchange.com/questions/12680/how-to-delete-all-white-spaces-until-first-character)
- [Delete](https://askubuntu.com/questions/64833/vi-shortcut-to-delete-until-the-next-x-character) to character X
	- Delete forward up to: `dtX`
	- Delete forward through: `dfX`
	- Delete backward up to: `dTX`
	- Delete backward through: `dFX`
- Visual-block mode
	- Multiple cursors on lines `<C-v>`
- TODO: Bind `<C-^>`to something else! (go back to last file)
- TODO: Only have paste from clippboard on `<leader+p>`. Or, figure out a better
keybinding! for paste...


## Window

- Split window
	- Horizontally `Tab+s`
	- Vertically `Tab+v`
- Close window(s)
	- Close current `Tab+c`
	- Close all but this `Tab+O`
- Move cusor
	- Down `Tab+j`
	- Up `Tab+k`
	- Left `Tab+h`
	- Right `Tab+l`
	- To top right `Tab+t`
	- To bottom left `Tab+b`
	- To last accessed `Tab+p`
	- To next window `Tab+w`
- Move window
	- Rotate downward/right `Tab+r`
	- Rotate upward/left `Tab+R`
	- To top `Tab+K`
	- To bottom `Tab+J`
	- To left `Tab+H`
	- To right `Tab+L`
	- To a new tab `Tab+T`
- Resize current window (the names are a bit anti intuitive, should probably be reveersed...)
	- Increase vertical size `C-Right`
	- Decrease vertical size `C-Left`
	- Increase horizontal size `C-Up` 
	- Decrease horizontal size `C-Down`

## Language server protocol (LSP)

Works only on files with an active LSP.

- Go to type definition `gt` 
- Go to definition `gd`
- Go to declaration of variable `ge`
- Format code `gf`
- ? Document symbol `gs`
- List all implementation for symbol `gi`
- ? Workspace folder `gl`
- LSP buffer hover (defenition) `K`
- Search workspace for symbol `<leader>-w-s`
- Diagnostics 
	- Go to next `A+2`
	- Go to previous `A+1`
	- Open code actions `A+3`
- See all references `<leader>-r-r`
- Rename variable/function in workspace `<leader>-r-n`
- See documentation `K`

### Rust 

- Move items up/down `<A-Up>`/`<A-Down>`
- Runnables `<S+å>`
  
## Alpha

- Open menu `C+A+a`

## Completions 

- Go to next suggestion `C-n`
- Go to previous suggestion `C-p`
- Confirm compeltion `C-y`
- Complete compeltion `C-<Space>` 

## Fugitive

Git functionality in Nvim
- Open fugitive `<leader>gs` 


## Harpoon 

- Add file to harpoon `<leader>a`
- Toggle harpoon menu `C-e`
- Quick move to 1-3 `Ctrl` + h/t/n/s respectively


## Hop
Quick move to words and characters

- Move to start of line `<leader><leader>+r`
- Move to start of word `<leader>+s`
- Move to end of word `<leader>+e`
- Jump to letter (anywhere) `f`


## Nvim-tree
File tree for Nvim. Keybindings only active when cursor is in Nvim-tree window.

Git: 
- Show only files/folder with a Git status `C`
- Move to next git file `C-,`
- Move to previous git file `C-.`

- Set folder as root `C-ö`
- Rename file/folder `r`
- Open file in new tab `C-t`
- Open file vertically `x`
- Open file horizontally `x`
- Close folder `<BS>` (back)
- Preview file `p`
- Move to next sibling file/folder `<`
- Move to previous sibling file/folder `>`
- Run command with path after `.`
- Go up on layer `-`
- Create new file/folder `a`
- Delete file/folder `d`
- Trash file/folder `D`
- Filter `f`
- Filter clear `F`
- See all keybindings `g?`
- Copy absolute path to clippboard `gy`
- Set mark on file `m`
- Open file `o`
- Copy filename `y`
- Copy relative path `Y`
- Open folder `<CR>` (enter)
- TODO: Skipping some here...  

## Surrounded
Description from <https://github.com/kylechui/nvim-surround>

The three "core" operations of add/delete/change can be done with the keymaps ys{motion}{char}, ds{char}, and cs{target}{replacement}, respectively. For the following examples, * will denote the cursor position:

- Remove surrounding `dsX`
- Surround a word `ysiwX`
- Change surroundings from X to Y `csXY`
- Wrap the entire line `yssX`
- In visual mode, first make selection, then `SX` to surround.


lets try out visual mode


## Tabs 

- Open new tab `Tab+t+t`
- Go to next tab `ää`
- Go to previous tab `öö`
- Close all tabs except current `Tab-c-o`
- Close current tab `Tab-c-c`

## Telescope 

- Search filename/foldername `<leader>-p-s`
- Search git-files `C-p`
- Search for text `<leader>-p-s`



## Toggleterm 

- Open float terminal `<leader>-t`
- Open bottom terminal `<leader>-v`
- Exit insert mode (terminal mode) `jk`
- Exit terminal `Tab-q`

Unknown mappngs `C+` + `h/j/k/l/w`

## Trouble 

- Open trouble `<leader>+x+q` 



