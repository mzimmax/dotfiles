require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "pyright" , "omnisharp-roslyn" }
-- vim.lsp.config('copilot', {
--   settings = {
--     telemetry = {
--       telemetryLevel = "off",
--     },
--   },
-- })
vim.lsp.config("omnisharp-proslyn", {
    on_attach = function()
        print("This will run when the server attaches!")
    end,
    settings = {
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
        },
    },
})
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
