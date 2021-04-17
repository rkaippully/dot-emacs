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
(setq-default indent-tabs-mode nil)

;;================================================
;; A minor mode that contains all key bindings
;;================================================

(defvar custom-bindings-map (make-keymap)
  "A keymap for custom bindings.")

(define-minor-mode custom-bindings-mode
  "A mode that activates custom-bindings."
  t nil custom-bindings-map)

(custom-bindings-mode 1)

(defmacro bind-custom-key (key def)
  `(define-key custom-bindings-map (kbd ,key) (quote ,def)))


(provide 'basics)
