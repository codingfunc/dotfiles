(use-package dante
  :ensure t
  :after haskell-mode
  :commands 'dante-mode
  :init
  (add-hook 'haskell-mode-hook 'flycheck-mode)
  (remove-hook 'flymake-diagnostic-functions 'flymake-proc-legacy-flymake)
  (add-hook 'haskell-mode-hook 'dante-mode)
  :config
  (flycheck-add-next-checker 'haskell-dante '(info . haskell-hlint))
  )



;;; 
;;; 
;; (use-package lsp-haskell
;;   :ensure t)

;; (use-package lsp-mode
;;   :ensure t)

;; (use-package lsp-ui
;;   :ensure t)

;; (add-hook 'haskell-mode-hook #'lsp)

