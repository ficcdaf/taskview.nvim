local M = {}
M.out = "Hello World!"

M.augroup = vim.api.nvim_create_augroup("taskview", {})

M.setup = function(opts)
	opts = opts or {}
	if opts["out"] then
		M.out = opts["out"]
	end
	vim.api.nvim_create_autocmd("VimEnter", {
		group = M.augroup,
		desc = "Print a helful start message",
		callback = M.main,
	})
end

M.main = function()
	print(M.out)
end

return M
