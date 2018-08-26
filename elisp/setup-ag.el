;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Ag - the silver searcher
;;


(use-package ag
  :config (setq ag-executable "/usr/local/bin/ag"
		ag-arguments '("--smart-case")
		ag-reuse-buffers t))


(provide 'setup-ag)
