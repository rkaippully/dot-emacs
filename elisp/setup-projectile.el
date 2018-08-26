;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Projectile for project management
;;


(use-package projectile
  :config
  (projectile-mode 1)
  (setq projectile-completion-system 'ivy)
  (bind-key-map projectile-mode-map "C-c p" projectile-command-map))


(provide 'setup-projectile)
