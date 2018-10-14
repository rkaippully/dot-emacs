;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Language server protocol
;;


(use-package lsp-mode)

(use-package lsp-ui
  :requires lsp-mode
  :hook
  (lsp-mode . lsp-ui-mode)
  (lsp-ui-mode . lsp-ui-peek-mode))

(provide 'setup-lsp)
