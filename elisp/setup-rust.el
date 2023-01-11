;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; rust environment
;;

(use-package rustic
  :init
  (setq lsp-rust-analyzer-cargo-all-targets nil)
  :hook ((rustic-mode . yas-minor-mode)
         (before-save . lsp-format-buffer)))

(provide 'setup-rust)
