;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; markdown-mode
;;

(defun init-org-mode ()
  (setq fill-column 120)
  (auto-fill-mode 1)
  (company-mode 1))

(use-package org
  :hook
  (org-mode . init-org-mode))

(use-package org-tempo)

(provide 'setup-org)
