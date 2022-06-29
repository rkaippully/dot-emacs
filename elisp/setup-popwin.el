;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; popwin-mode
;;


(use-package popwin
  :config
  (popwin-mode 1)
  (push "*rg*" popwin:special-display-config)
  (push "*ag search*" popwin:special-display-config)
  (global-set-key (kbd "C-z") popwin:keymap))


(provide 'setup-popwin)
