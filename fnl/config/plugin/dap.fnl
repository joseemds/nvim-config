(module config.plugin.dap {autoload {dap dap}})

(dap.adapters.mix_task {:type :executable
                            :command (string.format "%s/dev/elixir/elixir-ls/debugger.sh" (vim.fn.expand "$HOME"))
                            :args {}})

(dap.configurations.elixir
     {1 {:type :mix_task
         :name "mix test"
         :task :test
         :taskArgs {1 :--trace}
         :request :launch
         :startApps true
         :projectDir "${workspaceFolder}"
         :requireFiles {1 :test/**/test_helper.exs 2 :test/**/*_test.exs}}})
