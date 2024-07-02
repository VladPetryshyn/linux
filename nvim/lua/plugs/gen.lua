return { "David-Kunz/gen.nvim",
	opts = {model = "dolphin-mistral",},
	ft = programmingFts,
	config = function()
		require("gen").prompts["Fix_Code"] = {
			prompt = "Fix the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
			replace = true,
			extract = "```$filetype\n(.-)```",
		}
	end,
}

