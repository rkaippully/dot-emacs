;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; string-inflection - underscore -> UPCASE -> CamelCase conversion of names
;;


(use-package string-inflection
  :config
  (bind-custom-key "C-c C-u" string-inflection-all-cycle))


(provide 'setup-ag)
