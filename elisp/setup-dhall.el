;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; dhall programming
;;

(use-package dhall-mode
  :mode "\\.dhall\\'"
  :hook
  (dhall-mode . (lambda ()
                  (setq dhall-format-arguments '("--ascii")))))

(provide 'setup-dhall)
