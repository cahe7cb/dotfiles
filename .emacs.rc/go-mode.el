(use-package go-mode)
(add-hook 'go-mode-hook #'flycheck-mode)
(add-hook 'go-mode-hook #'lsp)
