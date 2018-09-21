;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; clojure environment
;;


(use-package cider
  :hook ((cider-repl-mode . paredit-mode)
	 (clojure-mode    . paredit-mode)))

(defun enable-clj-refactor ()
  (clj-refactor-mode 1)
  ; for adding require/use/import statements
  (yas-minor-mode 1))

(use-package clj-refactor
  :init
  (setq clojure-indent-style :always-indent)
  (setq clojure-align-forms-automatically t)
  (define-clojure-indent
    (-> 0)
    (->> 0))
  :hook (clojure-mode . enable-clj-refactor))


(provide 'setup-clojure)
