; On the fly syntax checking
(add-hook 'haskell-mode-hook #'flycheck-haskell-setup)
(add-hook 'haskell-mode-hook #'flycheck-mode)
(setq flycheck-ghc-args '("-dynamic"))
