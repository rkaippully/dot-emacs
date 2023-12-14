;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; haskell environment
;;

(use-package lsp-mode
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(use-package treemacs)

(use-package lsp-treemacs)

(use-package treemacs-projectile)

(use-package treemacs-icons-dired
  :config (treemacs-icons-dired-mode))

(use-package treemacs-magit)

(provide 'setup-lsp)
