function req(name)
	local ok, module = pcall(require, name)
	if not ok then
		print(name .. " had failed")
	end
end
