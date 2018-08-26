;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; clojure environment
;;


(use-package cider
  :hook ((cider-repl-mode   . paredit-mode)
	 (clojure-mode-hook . paredit-mode)))

(defun enable-clj-refactor ()
  (clj-refactor-mode 1)
  ; for adding require/use/import statements
  (yas-minor-mode 1))

(use-package clj-refactor
  :hook (clojure-mode-hook . enable-clj-refactor))


(provide 'setup-clojure)
