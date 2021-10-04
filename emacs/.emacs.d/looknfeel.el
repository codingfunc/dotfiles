(setq inhibit-startup-screen t)

;;; Debugging
(setq message-log-max 10000)

(prefer-coding-system 'utf-8-unix)
(set-language-environment "UTF-8")

;;; Appearance
(defun get-default-font ()
  (cond
   ((eq system-type 'windows-nt) "Consolas-13")
   ((eq system-type 'gnu/linux) "Ubuntu Mono-18")))


(add-to-list 'default-frame-alist '(width  . 90))
(add-to-list 'default-frame-alist '(height . 40))
;;(add-to-list 'default-frame-alist "Monaco")


(when (display-graphic-p)
  (set-face-attribute 'fixed-pitch nil :font (get-default-font)))

;; no toolbar
(tool-bar-mode 0)

;; no menubar
(menu-bar-mode 0)

;; no scrollbar
(scroll-bar-mode 0)

;; column numbers
(column-number-mode t)

;; match parentheses
;;(show-paren-delay 0)
(show-paren-mode 1)

;; jump to matching if it is off-screen (testing)
;;(blink-matching-paren 'jump)
;;(blink-matching-paren 'show)

(load-theme 'dracula' t)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

