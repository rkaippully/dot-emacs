;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;


;; (use-package haskell-mode
;;   :init
;;   (setq haskell-stylish-on-save t))

;; (use-package dante
;;   :hook (haskell-mode . dante-mode))

(use-package haskell-mode
  :init
  (setq haskell-stylish-on-save t))

(use-package lsp-haskell
  :init
  (setq lsp-haskell-process-path-hie "hie-wrapper")
  :hook
  (haskell-mode . lsp-haskell-enable))

(provide 'setup-haskell)
