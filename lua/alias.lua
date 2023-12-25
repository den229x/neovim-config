local map = vim.keymap.set

function nm(key, com)
	map('n', key, com)
end

function im(key, com)
	map('i', key, com)
end

function tm(key, com)
	map('t', key, com)
end

