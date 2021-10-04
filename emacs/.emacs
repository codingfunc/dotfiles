(setq package-archives '(
			 ("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")))


;; Actually get “package” to work.
(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; (package-refresh-contents)

;;(setq visible-bell 1)
;; visual bell

(setq visible-bell nil
      ring-bell-function 'double-flash-mode-line)
(defun double-flash-mode-line ()
  (let ((flash-sec (/ 1.0 20)))
    (invert-face 'mode-line)
    (run-with-timer flash-sec nil #'invert-face 'mode-line)
    (run-with-timer (* 2 flash-sec) nil #'invert-face 'mode-line)
    (run-with-timer (* 3 flash-sec) nil #'invert-face 'mode-line)))


;; https://github.com/jwiegley/use-package#package-installation
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


(use-package auto-package-update
;;  :defer 10
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))


(use-package paredit
  :ensure t)

(use-package neotree
  :ensure t)
(global-set-key [f8] 'neotree-toggle)

(load "~/.emacs.d/looknfeel.el")
(load "~/.emacs.d/cpp.el")
(load "~/.emacs.d/java.el")
(load "~/.emacs.d/haskell.el")
(load "~/.emacs.d/rust.el")
(load "~/.emacs.d/scheme.el")




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(lsp-ui rustic dracula-theme solarized-theme zenburn-theme haskell-mode ## use-package geiser)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
