;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; plantuml-mode customization
;;

(use-package plantuml-mode
  :mode "\\.puml\\'"
  :config
  (setq plantuml-default-exec-mode 'executable)
  )

(provide 'setup-plantuml)
