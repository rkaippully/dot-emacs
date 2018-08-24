;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Basic configuration settings
;;


(setq make-backup-files nil ;; I will take care of my backups, thank you.
      auto-save-default nil
      initial-scratch-message nil
      recentf-max-saved-items 100 ;; show more recent files
      )

;; Answering yes and no is tedious
(fset 'yes-or-no-p 'y-or-n-p)

(set-language-environment "UTF-8")
