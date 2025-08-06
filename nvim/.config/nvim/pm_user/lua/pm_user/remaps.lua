local builtin = require("telescope.builtin")
local pm_telescope_ext = require("pm_user.telescope_ext")
local keyset = vim.keymap.set
local M = {
  on_lsp_attach = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
    local opts = { buffer = ev.buf, noremap = true, silent = true }
    keyset("n", "<S-k>", vim.lsp.buf.hover, opts)
    keyset("n", "<leader>a", vim.lsp.buf.code_action, opts)
    keyset("n", "<S-l>", function()
      vim.diagnostic.open_float(nil, { focus = false })
    end, opts)
    keyset("n", "]d", function()
      vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
    end, opts)
    keyset("n", "[d", function()
      vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
    end, opts)
    keyset("n", "<leader>u", vim.lsp.buf.signature_help, opts)
    keyset("n", "gd", function()
      vim.lsp.buf.references()
    end, opts)
    keyset("n", "gD", vim.lsp.buf.declaration, opts)
    keyset("n", "gd", vim.lsp.buf.definition, opts)
  end,

  telescope_opt = function(opt)
    return table.update({
      previewer = false,
      layout_strategies = "vertical",
      line_width = 0.25,
      path_display = function(_, path)
        local dirs = vim.PM.file.parse(path)
        dirs.directories = table.slice(dirs.directories, #dirs.directories - 3, #dirs.directories)
        table.insert(dirs.directories, dirs.filename)
        return vim.PM.text.join(vim.PM.g.path_sep, dirs.directories)
      end,
    }, opt or {})
  end,

  keyargs = function(...)
    local keyarg = {}
    for k, value in ipairs(...) do
      if k ~= "desc" then
        keyarg[value] = true
      else
        keyarg[k] = value
      end
    end
    return keyarg
  end,
  mapKeyForNewtab = function(mode, map, func, kmode)
    if not vim.startswith(map, "<leader>") then
      return
    end

    vim.keymap.set(mode, map, func, kmode)
    vim.keymap.set(mode, "<leader>n" .. string.sub(map, 9, #map), function()
      local pre_buf = {
        bufnr = vim.api.nvim_get_current_buf(),
      }
      vim.cmd("tabnew")
      func(pre_buf)
    end, kmode)
  end,
}

keyset("n", "<leader>ss", ":mksession!s.vim<CR>", M.keyargs({ "noremap", "silent" }))
keyset("n", "<leader>ro", ":e!<CR>", M.keyargs({ "noremap", "silent" }))
keyset("n", "<leader>w", ":bd<CR>", M.keyargs({ "noremap", "silent" }))
keyset({ "t" }, "<C-n>", "<C-\\><C-n>")
keyset("x", "<leader>p", [["_dP]])
-- keyset("i", "<Tab>", "<C-v><Tab>")
keyset("v", "J", ":m '>+1<CR>gv=gv")
keyset("v", "K", ":m '<-2<CR>gv=gv")
keyset("v", "Y", [["+y]])
-- keyset("n", "<C-x>", ":bd<CR>", M.keyargs({ "noremap", "silent" }))
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")
keyset("n", "<leader>l", ":nohlsearch<CR>")
keyset("n","<A-[>",":tabp<CR>")
keyset("n","<A-]>",":tabn<CR>")
--window movement mapping
keyset("n", "<C-j>", "<C-w><C-j>")
keyset("n", "<C-k>", "<C-w><C-k>")
keyset("n", "<C-h>", "<C-w><C-h>")
keyset("n", "<C-l>", "<C-w><C-l>")

keyset("n", "<leader>fo", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, M.keyargs({ "noremap", "silent", desc = "conform format" }))

M.mapKeyForNewtab("n", "<leader>tt", function()
  vim.cmd("terminal")
end, M.keyargs({ "noremap", "silent" }))
M.mapKeyForNewtab("n", "<leader>ex", function()
  vim.cmd("Ex")
end, M.keyargs({ "noremap", "silent" }))

M.mapKeyForNewtab("n", "<leader>ef", function(bf)
  local filename = vim.api.nvim_buf_get_name(bf and bf.bufnr or 0)
  vim.cmd("Ex " .. filename:gsub(vim.PM.file.parse(filename).filename, ""))
end, M.keyargs({ "noremap", "silent" }))
--telescope
M.mapKeyForNewtab("n", "<leader>ff", function()
  builtin.find_files(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

M.mapKeyForNewtab("n", "<leader>en", function()
  builtin.find_files(M.telescope_opt({ cwd = vim.fn.stdpath("config") }))
end, M.keyargs({ "noremap", "silent" }))

M.mapKeyForNewtab("n", "<leader>fd", function()
  pm_telescope_ext.find_folders(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

M.mapKeyForNewtab("n", "<leader>fb", function()
  builtin.buffers(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

keyset("n", "<leader>fg", function()
  builtin.live_grep(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

keyset("n", "<leader>fh", function()
  builtin.help_tags(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

keyset("n", "<leader>fs", function()
  builtin.lsp_document_symbols(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

keyset("n", "<leader>fr", function()
  builtin.lsp_references(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

keyset("n", "<leader>dd", function()
  builtin.diagnostics(M.telescope_opt())
end, M.keyargs({ "noremap", "silent" }))

--lsp-keybinding
vim.api.nvim_create_autocmd("LspAttach", {
  callback = M.on_lsp_attach,
})

return M
