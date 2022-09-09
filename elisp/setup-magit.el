;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; It's Magit!
;;


(use-package magit
  ;; Rebind key sequences
  :bind (("C-x g"   . nil)
	 ("C-x M-g" . nil)
	 ("C-c M-g" . nil)
	 ("C-c g g" . magit-status)
	 ("C-c g d" . magit-dispatch-popup)
	 ("C-c g f" . magit-file-popup))
  :config
  (setq auth-sources '("~/.config/emacs-authinfo")))

(use-package forge
  :after magit)

(provide 'setup-magit)
