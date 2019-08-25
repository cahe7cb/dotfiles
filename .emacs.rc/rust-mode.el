;; Company completion
(use-package company
  :after rust-mode
  :init
  (add-hook 'rust-mode-hook #'company-mode))

;; Language server integration
(use-package lsp-mode
  :commands lsp
  :init
  (add-hook 'rust-mode-hook #'lsp))
