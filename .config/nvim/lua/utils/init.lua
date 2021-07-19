--open terminal applications in nvim

function term_app(name, mapping)
    vim.api.nvim_set_keymap('n', "<Leader>x"..mapping, ":term " .. name .. " <CR> :keepalt file " .. name .. " <CR>A<CR>", { noremap = true, silent = true })
end
