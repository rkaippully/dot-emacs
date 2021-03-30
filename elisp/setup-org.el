;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; markdown-mode
;;


(defun init-org-mode ()
  (setq fill-column 120)
  (auto-fill-mode))

(use-package org
  :hook
  (org-mode . init-org-mode))

(use-package org-bullets
  :ensure t
  :hook
  (org-mode . org-bullets-mode))

(use-package ox-reveal
  :ensure t
  :config
  (setq org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js"))

(use-package htmlize
  :ensure t)

(provide 'setup-org)
