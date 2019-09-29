(use-package go-mode)

(add-hook 'go-mode-hook #'flycheck-mode)
(add-hook 'go-mode-hook #'lsp)

(add-hook 'lsp-after-initialize-hook (lambda ()
				(when (eq major-mode 'go-mode)
				  (flycheck-add-next-checker 'go-golint 'lsp-ui))))

(add-hook 'flycheck-mode-hook (lambda ()
				(when (eq major-mode 'go-mode)
				  (setq flycheck-checker 'go-golint))))

(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
