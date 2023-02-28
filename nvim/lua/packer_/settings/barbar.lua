

-- Setup barbar




require'bufferline'.setup {
	animation = true,
	auto_hide = false,
	closable = true,
	icons = false,
	icon_separator_active = '▎',
	icon_separator_inactive = '▎',
	icon_close_tab = '',
	icon_close_tab_modified = '●',
	icon_pinned = '車',
	hide = {
		extensions = false,
		inactive = false,
		current = false,
		alternate = false,
		visible = true,
	},
}
