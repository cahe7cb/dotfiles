;; Language server integration
(use-package lsp-mode
  :commands lsp
  :init
  (add-hook 'c-mode-hook #'lsp)
  (add-hook 'c++-mode-hook #'lsp))
