return {
    {
        "mfussenegger/nvim-dap",
        event = "BufWinEnter",
        dependencies = {
            "rcarriga/nvim-dap-ui",
        },
        config = function()
            local dap = require('dap')
            dap.adapters.lldb = {
                type = 'executable',
                command = '~/.config/workspace/', -- adjust as needed, must be an absolute path
                name = 'lldb'
            }

            local dap_config = {
                name = "Launch file",
                type = "cppdbg",
                request = "launch",
                program = function()
                    local dir = "/"
                    if vim.bo.filetype == "rust" then
                        dir = "/target/debug/"
                    end
                    ---@diagnostic disable-next-line
                    return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. dir, "file")
                end,
                cwd = "~/.config/workspace/",
                stopAtEntry = true,
            }

            dap.configurations.c = { dap_config }
            dap.configurations.cpp = { dap_config }

                  local dap = require("dap")
                local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
        end,
    },
}

