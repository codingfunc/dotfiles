(require 'package)
;;; either the stable version:

(add-to-list 'package-archives
  ;; choose either the stable or the latest git version:
  ;; '("melpa-stable" . "http://stable.melpa.org/packages/")
  '("melpa-unstable" . "http://melpa.org/packages/"))

(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; required packages
(setq package-list '(use-package)) 

;; use-package to install required packages
;; bootstrap to install use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(require 'rust-mode)
