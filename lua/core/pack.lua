local M = {}

local function install(spec)
	if spec.deps then
		for _, dep in ipairs(spec.deps) do
			install(dep)
		end
	end

	vim.pack.add({
		{
			src = "https://github.com/" .. spec.repo,
		}
	})
end

local function build(spec)
	if spec.deps then
		for _, dep in ipairs(spec.deps) do
			build(dep)
		end
	end

	if spec.build then
		if type(spec.build) == "function" then
			spec.build()
		elseif type(spec.build) == "string" then
			vim.system({ "sh", "-c", spec.build }):wait()
		end
	end
end

local function setup(spec)
	if spec.deps then
		for _, dep in ipairs(spec.deps) do
			setup(dep)
		end
	end

	if spec.module then
		local ok, plugin = pcall(require, spec.module)

		if ok and type(plugin.setup) == "function" then
			plugin.setup(spec.opts or {})
		end
	end

	if spec.config then
		spec.config()
	end
end

function M.load(spec)
	install(spec)
	build(spec)
	setup(spec)
end

return M
