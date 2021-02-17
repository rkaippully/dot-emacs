;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; reasonml environment
;;

(use-package reason-mode)

(use-package lsp-mode
  :hook (reason-mode . lsp)
  :commands lsp
  :config (lsp-register-client
           (make-lsp-client :new-connection (lsp-stdio-connection "~/.local/bin/reason-language-server")
                            :major-modes '(reason-mode)
                            :notification-handlers (ht ("client/registerCapability" 'ignore))
                            :priority 1
                            :server-id 'reason-ls)))

(use-package lsp-ui
  :commands lsp-ui-mode)

(provide 'setup-reason)
