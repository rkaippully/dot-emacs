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

(defun init-clojure-mode ()
  (clj-refactor-mode 1)
  ; for adding require/use/import statements
  (yas-minor-mode 1)
  (put-clojure-indent '-> 0)
  (put-clojure-indent '->> 0)
  (put-clojure-indent 'and 0)
  (put-clojure-indent 'or 0)
  (setq emacs-lisp-docstring-fill-column nil)
  (setq fill-column 90)
  (setq clojure-docstring-fill-column 90)
  (auto-fill-mode))

(use-package clj-refactor
  :init
  (setq clojure-indent-style :always-indent)
  (setq clojure-align-forms-automatically t)
  :hook
  (clojure-mode . init-clojure-mode))


(provide 'setup-clojure)
