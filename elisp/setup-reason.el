;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; reasonml environment
;;


(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "/Users/I078764/.local/bin/reason-language-server")
                  :major-modes '(reason-mode)
                  :notification-handlers (ht ("client/registerCapability" 'ignore))
                  :priority 1
                  :server-id 'reason-ls))

(use-package lsp-mode
  :hook (reason-mode . lsp)
  :commands lsp)

(use-package lsp-ui
  :commands lsp-ui-mode)

(provide 'setup-reason)
