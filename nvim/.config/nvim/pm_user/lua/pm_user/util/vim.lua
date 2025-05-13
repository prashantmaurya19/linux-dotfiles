local M = {}

function M.get_bufnr_by_tabid(tab_id)
  return vim.api.nvim_win_get_buf(vim.api.nvim_tabpage_get_win(tab_id))
end

return M
