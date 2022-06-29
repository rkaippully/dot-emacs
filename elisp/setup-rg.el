;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; ripgrep
;;


(use-package rg
  :config
  (rg-enable-default-bindings)
  (setq rg-ignore-case 'smart))


(provide 'setup-rg)
