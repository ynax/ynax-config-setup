
require('telescope').setup{ 
	defaults = {
		file_ignore_patterns = 
		{
			-- Common "bloated" directories
			"target",
			"Target",
			"TARGET", 
		} 
	} 
} 
