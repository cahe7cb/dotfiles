(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Hide pleb GUI stuff
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)

;; Custom rebindings
(global-set-key (kbd "C-x \S-o") (lambda () (interactive) (other-window -1)))

(set-frame-font "Ubuntu Mono-12")

;; More sane line-number behaviour
;; (setq display-line-numbers-grow-only 1)
;; (setq display-line-numbers-width-start 1)
(global-display-line-numbers-mode 1)

;; Spaces are better than tabs
(setq-default c-basic-offset 4
              c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(add-hook 'c-mode-hook (lambda ()
                         (interactive)
                         (c-toggle-comment-style -1)))

(use-package move-text)
(move-text-default-bindings)
(use-package multiple-cursors)

(use-package company)
(global-company-mode)

;; Swap/Backup files are annoying AF
(setq make-backup-files nil)
;; (setq auto-save-default nil)

;; Decrease startup time by dropping certain debug output
(setf inhibit-startup-screen 1
      inhibit-startup-echo-area-message 1
      inhibit-startup-message 1)

(setq next-screen-context-lines 10)
      
;; Snippets
(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :init (yas-global-mode t))

;; On-the-fly syntax checking
(use-package flycheck
  :ensure t
  :diminish flycheck-mode)

;; Company completion
(use-package company
  :after rust-mode
  :init
  (add-hook 'rust-mode-hook #'company-mode))

;; Language server integration
(use-package lsp-mode
  :after rust-mode
  :commands lsp
  :init
  (add-hook 'rust-mode-hook #'lsp)
  (add-hook 'c-mode-hook #'lsp)
  (add-hook 'c++-mode-hook #'lsp))

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)

(setq lsp-prefer-flymake nil)

;; Parentheses matching
(use-package autopair
  :init
  (autopair-global-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (atom-dark)))
 '(custom-safe-themes
   (quote
    ("2642a1b7f53b9bb34c7f1e032d2098c852811ec2881eec2dc8cc07be004e45a0" default)))
 '(package-selected-packages
   (quote
    (move-text multiple-cursors atom-dark-theme color-theme-sanityinc-tomorrow clean-aindent-mode solarized-theme haskell-mode haskell-tab-indent company-lsp lsp-mode lsp-ui autopair smex magit magit-gh-pulls magit-todos magithub use-package rust-mode zenburn-theme abyss-theme cmake-ide yasnippet company company-math company-statistics flycheck))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
