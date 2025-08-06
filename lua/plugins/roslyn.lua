return {
    "seblyng/roslyn.nvim",
    ft = { "cs", "razor" },
    dependencies = {
        { "tris203/rzls.nvim", config = true, },
    },
    config = function()
        local rzls_base_path = vim.fs.joinpath(vim.fn.stdpath("data"), "rzls")

        vim.lsp.config("roslyn", {
            cmd = {
                "dotnet",
                "C:/tools/roslyn_lsp/Microsoft.CodeAnalysis.LanguageServer.dll",
                "--logLevel=Information",
                "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
                "--razorSourceGenerator=" .. vim.fs.joinpath(rzls_base_path, "Microsoft.CodeAnalysis.Razor.Compiler.dll"),
                "--razorDesignTimePath=" ..
                vim.fs.joinpath(rzls_base_path, "Targets", "Microsoft.NET.Sdk.Razor.DesignTime.targets"),
                "--stdio",
            },
            handlers = require("rzls.roslyn_handlers"),
        })
        vim.lsp.enable("roslyn")
    end,
    init = function()
        vim.filetype.add({
            extension = {
                razor = "razor",
                cshtml = "razor",
            },
        })
    end
}
