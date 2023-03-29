return {
  "neoclide/coc.nvim",
  branch = "release",
  config = function()
    -- Keymap
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_set_keymap

    -- Use K to show documentation in preview window
    -- @reference at github.com/neoclide/coc.nvim/README.md
    function _G.show_docs()
        local cw = vim.fn.expand('<cword>')
        if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
            vim.api.nvim_command('h ' .. cw)
        elseif vim.api.nvim_eval('coc#rpc#ready()') then
            vim.fn.CocActionAsync('doHover')
        else
            vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
        end
    end
    keymap("n", "K", '<CMD>lua _G.show_docs()<CR>', opts)
  end,
}

