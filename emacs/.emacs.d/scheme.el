(use-package autoinsert
  :ensure t)

(setq scheme-program-name "/home/aha/bin/chicken/bin/csi -:c")

;; Indenting module body code at column 0
(defun scheme-module-indent (state indent-point normal-indent) 0)
(put 'module 'scheme-indent-function 'scheme-module-indent)

(put 'and-let* 'scheme-indent-function 1)
(put 'parameterize 'scheme-indent-function 1)
(put 'handle-exceptions 'scheme-indent-function 1)
(put 'when 'scheme-indent-function 1)
(put 'unless 'scheme-indent-function 1)
(put 'match 'scheme-indent-function 1)

;;(require 'autoinsert)
(add-hook 'find-file-hooks 'auto-insert)

;;(setq auto-insert-alist 
;;      '(("\\.scm" . 
 ;;        (insert "#!/bin/sh\n#| -*- scheme -*-\nexec csi -s $0 \"$@\"\n|#\n"))))
