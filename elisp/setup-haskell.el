;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;


(use-package haskell-mode
  :custom
  (haskell-stylish-on-save t)
  (haskell-process-suggest-remove-import-lines t))

(use-package intero
  :hook
  (haskell-mode . (lambda ()
                    (intero-mode)
                    (haskell-auto-insert-module-template))))

(provide 'setup-haskell)
