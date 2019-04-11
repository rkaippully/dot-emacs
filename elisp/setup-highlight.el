;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; popwin-mode
;;


(require 'hi-lock)

(add-hook 'text-mode-hook #'hi-lock-mode)
(add-hook 'prog-mode-hook #'hi-lock-mode)

(provide 'setup-highlight)
