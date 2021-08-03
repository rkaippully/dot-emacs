;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;


(use-package haskell-mode
  :hook (haskell-mode . yas-minor-mode)
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
  (setq lsp-haskell-formatting-provider "stylish-haskell"))

(use-package treemacs)

(use-package lsp-treemacs)

(use-package treemacs-projectile)

(use-package treemacs-icons-dired
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit)

(provide 'setup-haskell)
