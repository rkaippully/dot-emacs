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

(use-package lsp)

(use-package lsp-haskell
  :config
  (setq lsp-haskell-process-path-hie "hie-wrapper")
  :hook
  (haskell-mode . (lambda ()
                    (lsp)
                    (lsp-haskell-set-completion-snippets-on)

                    (haskell-auto-insert-module-template))))

(provide 'setup-haskell)
