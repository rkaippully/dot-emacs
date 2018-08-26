;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Paredit for lisps
;;


(use-package paredit
  :commands paredit-mode
  :hook ((emacs-lisp-mode . paredit-mode)))


(provide 'setup-paredit)
