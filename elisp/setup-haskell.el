;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;


(use-package haskell-mode
  :init
  (setq haskell-stylish-on-save t))

(use-package dante
  :hook (haskell-mode . dante-mode))

(provide 'setup-haskell)
