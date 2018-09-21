;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; flycheck for syntax checking
;;


(use-package flycheck
  :init (global-flycheck-mode 1))

(use-package flycheck-color-mode-line
 :hook (flycheck-mode . flycheck-color-mode-line-mode))

(use-package flycheck-pos-tip
  :init (flycheck-pos-tip-mode 1))

(global-set-key [f9] 'flycheck-list-errors)

(provide 'setup-flycheck)
