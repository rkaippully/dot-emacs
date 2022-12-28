;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; markdown-mode
;;

(defun init-org-mode ()
  (setq fill-column 120)
  (auto-fill-mode 1))

(use-package org
  :hook
  (org-mode . init-org-mode))

(provide 'setup-org)
