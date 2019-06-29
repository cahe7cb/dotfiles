(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Hide pleb GUI stuff
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)

(set-frame-font "Ubuntu Mono-12")

;; More sane line-number behaviour
;; (setq display-line-numbers-grow-only 1)
;; (setq display-line-numbers-width-start 1)
(global-display-line-numbers-mode 1)

;; Spaces are better than tabs
(setq tab-width 1)
(setq-default indent-tabs-mode nil)
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)

;; Swap/Backup files are annoying AF
(setq make-backup-files nil)
;; (setq auto-save-default nil)

;; Decrease startup time by dropping certain debug output
(setf inhibit-startup-screen 1
      inhibit-startup-echo-area-message 1
      inhibit-startup-message 1)

;; Hooks for irony
(use-package irony
  :init
    (add-hook 'c++-mode-hook 'irony-mode)
    (add-hook 'c-mode-hook 'irony-mode)
    (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))
      
;; Snippets
(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :init (yas-global-mode t))

;; On-the-fly syntax checking
(use-package flycheck
  :ensure t
  :diminish flycheck-mode)

;; Rust completion using racer with company
(use-package racer
  :after rust-mode
  :init
    (add-hook 'rust-mode-hook #'racer-mode)
    (use-package company
      :init
        (add-hook 'racer-mode-hook #'company-mode)
      :config
        (setq company-idle-delay nil)
        (setq company-tooltip-align-annotations t))
  :config
    (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common))

(use-package flycheck-rust
  :commands flycheck-rust-setup
  :init
    (with-eval-after-load "flycheck"
      (add-to-list 'flycheck-mode-hook #'flycheck-rust-setup)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (smex magit magit-gh-pulls magit-todos magithub flycheck-rust use-package ac-racer racer rust-mode zenburn-theme abyss-theme cmake-ide yasnippet company company-irony company-irony-c-headers company-math company-statistics flycheck flycheck-irony irony))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
