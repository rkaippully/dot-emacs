;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; zig environment
;;

(defun customize-zig-lsp ()
  (lsp-ui-doc-mode)
  (setq zig-format-on-save nil))

(use-package zig-mode
  :hook ((zig-mode . yas-minor-mode)
         (zig-mode . lsp)
         (lsp-after-initialize . customize-zig-lsp)))

(provide 'setup-zig)
