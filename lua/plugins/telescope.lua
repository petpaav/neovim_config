return {
  {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      vim.keymap.set("n", "<space>sf", require('telescope.builtin').find_files)
      vim.keymap.set("n", "<space>sn", function()
        require('telescope.builtin').find_files {
          cwd = vim.fn.stdpath("config")
        }
      end)

      vim.keymap.set("n", "<space>sr", function()
        require('telescope.builtin').lsp_references {
          cwd = vim.fn.stdpath("config")
        }
      end)

    end
  }
}
