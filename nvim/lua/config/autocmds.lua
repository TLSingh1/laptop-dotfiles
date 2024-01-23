local api = vim.api

-- Create the autocmd group
api.nvim_exec(
	[[
  augroup fold_col_highlights
    autocmd!
    autocmd BufEnter,BufWinEnter *.norg hi FoldColumn guifg=#141414 guibg=#141414
  augroup END
]],
	false
)

local function set_signcolumn_highlight()
    if is_current_buffer_active() then
        vim.cmd("hi SignColumn guibg=#141414")
    else
        vim.cmd("hi SignColumn guibg=#000000")
    end
end

local function is_current_buffer_active()
    return vim.fn.bufnr('%') == vim.api.nvim_get_current_buf()
end

vim.api.nvim_exec([[
    augroup SignColumnHighlight
        autocmd!
        autocmd CursorMoved,CursorMovedI * lua set_signcolumn_highlight()
    augroup END
]], false)





-- api.nvim_create_augroup("signcolumn_hl", { clear = true })
-- api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, { command = "hi SignColumn guibg=#141414", group = "signcolumn_hl" })
-- api.nvim_create_autocmd({ "BufLeave", "BufWinLeave" }, { command = "hi SignColumn guibg=#000000", group = "signcolumn_hl" })

-- api.nvim_exec([[
--   augroup active_highlights
--     autocmd!
--     autocmd BufEnter,BufWinEnter * hi SignColumn guibg=#141414
--     autocmd BufLeave,BufWinLeave * hi SignColumn guibg=#000000
--   augroup END
-- ]], false)
