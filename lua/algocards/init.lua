local M = {}

-- Function to set up the plugin
function M.setup(opts)
  opts = opts or {}
  -- Add any configuration options here
end

-- Function to display a greeting message
function M.greet()
  print("Hello from AlgoCards!")
end

function M.setup()
    vim.api.nvim_create_user_command('AlgoCardsGreet', function(opts)
        M.greet(opts.args)
    end, { nargs = '?' })  -- Allow for an optional argument
end

return M
