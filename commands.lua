local create_cmd = vim.api.nvim_create_user_command

-- Autosave files command { yoinked from siduck's dotfiles }
create_cmd("AutosaveToggle", function ()
  vim.g.autosave = not vim.g.autosave

  if vim.g.autosave then
    vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
      group = vim.api.nvim_create_augroup("Autosave", {}),
      callback = function ()
        if vim.api.nvim_buf_get_name(0) and #vim.bo.buftype ==0 then
          vim.cmd "silent w"
          vim.api.nvim_echo(
            {
              { "󰄳", "LazyProgressDone" },
              { " file autosaved at " .. os.date "%I:%M %p" }
            },
            false,
            {}
          )

          vim.defer_fn(function ()
            vim.api.nvim_echo({}, false, {})
          end, 1800)
        end
      end,
    })
  else
    vim.api.nvim_del_augroup_by_name "Autosave"
  end
end, {})

-- Toggle colorcolumn display
create_cmd("CCToggle", function ()
  vim.g.ccenabled = not vim.g.ccenabled

  if vim.g.ccenabled then
    vim.opt.colorcolumn = "80"
  else
    vim.opt.colorcolumn = "0"
  end
end, {})


-- Commands for "peek.nvim" plugin
create_cmd("PeekOpen", function ()
  require("peek").open()
end, {})

create_cmd("PeekClose", function ()
  require("peek").close()
end, {})

-- "rest-nvim" plugins command
create_cmd("RestRun", function ()
  require("rest-nvim").run()
end, {})

