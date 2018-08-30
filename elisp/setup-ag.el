;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Ag - the silver searcher
;;


(use-package ag
  :config (setq ag-arguments '("--smart-case")
		ag-reuse-buffers t))


(provide 'setup-ag)
