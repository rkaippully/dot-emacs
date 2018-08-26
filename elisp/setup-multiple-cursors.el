;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; multiple-cursors mode
;;


(use-package multiple-cursors
  :config
  (bind-custom-key "C-c c e" mc/edit-lines)
  (bind-custom-key "C-c c a" mc/mark-all-like-this)
  (bind-custom-key "C-c c n" mc/mark-next-like-this)
  (bind-custom-key "C-c c p" mc/mark-previous-like-this))


(provide 'setup-multiple-cursors)
