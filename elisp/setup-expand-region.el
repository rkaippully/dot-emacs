;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; expand-region to select regions in the AST
;;


(use-package expand-region
  :config
  (bind-custom-key "C->" er/expand-region)
  (bind-custom-key "C-<" er/contract-region))


(provide 'setup-expand-region)
