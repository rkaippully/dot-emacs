;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Terraform configuration files
;;


(use-package terraform-mode
  :hook
  (terraform-mode . terraform-format-on-save-mode))

(use-package company-terraform
  :hook
  (terraform-mode . company-terraform-init))

(provide 'setup-terraform)
