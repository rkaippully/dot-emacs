;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; markdown-mode
;;


(defun set-markdown-command (fmt)
  (setq markdown-command (concat "pandoc -t html -f " fmt " --metadata pagetitle='Markdown'")))

(defun init-markdown-mode ()
  (set-markdown-command "markdown")
  (setq fill-column 120)
  (auto-fill-mode))

(defun init-gfm-mode ()
  (set-markdown-command "gfm")
  (setq fill-column 120)
  (auto-fill-mode))

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :hook ((markdown-mode . init-markdown-mode)
         (gfm-mode      . init-gfm-mode)))


(provide 'setup-markdown)
