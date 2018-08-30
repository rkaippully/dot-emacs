;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; markdown-mode
;;


(defun set-markdown-command (fmt)
  (setq markdown-command (concat "pandoc -t html -f " fmt " --metadata pagetitle='Markdown'")))

(defun set-markdown-mode-command ()
  (set-markdown-command "markdown"))

(defun set-gfm-mode-command ()
  (set-markdown-command "gfm"))

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :hook ((markdown-mode . set-markdown-mode-command)
         (gfm-mode      . set-gfm-mode-command)))


(provide 'setup-markdown)
