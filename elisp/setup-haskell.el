;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;


(use-package haskell-mode)

(use-package intero
  :hook (haskell-mode . intero-mode))


(provide 'setup-haskell)
