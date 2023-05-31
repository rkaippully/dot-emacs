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
         (before-save . (lambda ()
                          (when enable-lsp-haskell-formatting
                            (lsp-format-buffer))))))

(use-package avy)

(use-package lsp-mode
  :hook (haskell-mode . lsp)
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode
  :hook (lsp-ui-mode . (lambda () (lsp-ui-sideline-mode 0))))

(defun customize-haskell-lsp ()
  (lsp-ui-doc-mode))

(use-package lsp-haskell
  :config
  (setq lsp-haskell-formatting-provider "fourmolu")
  (setq lsp-haskell-server-path "haskell-language-server-wrapper")
  :hook (lsp-after-initialize . customize-haskell-lsp)
  )

(use-package treemacs)

(use-package lsp-treemacs)

(use-package treemacs-projectile)

(use-package treemacs-icons-dired
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit)

(provide 'setup-haskell)
