;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Basic configuration settings
;;


(setq
 ;; I will take care of my backups, thank you.
 make-backup-files nil
 auto-save-default nil

 custom-file "~/.emacs.d/custom.el")

(load custom-file 'noerror)

(set-language-environment "UTF-8")

(defmacro bind-key-map (km key def)
  `(define-key ,km (kbd ,key) (quote ,def)))


(provide 'basics)
