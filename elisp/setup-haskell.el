;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;

(defcustom enable-lsp-haskell-formatting t
  "Enable automatic formatting of haskell code on save")

(use-package haskell-mode
  :hook ((haskell-mode . yas-minor-mode)
	 (haskell-mode . lsp)
         (before-save . (lambda ()
                          (when enable-lsp-haskell-formatting
                            (lsp-format-buffer))))))

(use-package avy)

(defun customize-haskell-lsp ()
  (lsp-ui-doc-mode))

(use-package lsp-haskell
  :config
  (setq lsp-haskell-formatting-provider "fourmolu")
  (setq lsp-haskell-server-path "haskell-language-server-wrapper")
  :hook (lsp-after-initialize . customize-haskell-lsp)
  )

(provide 'setup-haskell)
