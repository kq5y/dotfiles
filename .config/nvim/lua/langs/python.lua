vim.lsp.config('ruff', {
  init_options = {
    settings = {
      -- Ruff language server settings go here
      showSyntaxErrors = false,
      logLevel = 'error',
      format = {
        preview = true,
      }
    }
  }
})

vim.lsp.config('pyright', {
  settings = {
    pyright = {
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = 'openFilesOnly',
        ignore = { '*' },
      }
    }
  }
})

vim.lsp.enable('ruff')
vim.lsp.enable('pyright')

