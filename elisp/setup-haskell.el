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

(use-package lsp-mode
  :hook (haskell-mode . lsp)
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package lsp-haskell
  :config
  (setq lsp-haskell-process-path-hie "haskell-language-server-wrapper")
  (lsp-haskell-set-hlint-on)
  (lsp-haskell-set-completion-snippets-on))

(provide 'setup-haskell)
