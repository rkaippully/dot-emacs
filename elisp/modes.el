;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Mode configuration
;;


;;--------------------------------------------------------------------------------------------------
;; Ivy for completion
;;--------------------------------------------------------------------------------------------------

(use-package ivy
  :config (progn
	    ;; Enable ivy
	    (ivy-mode 1)

	    ;; Show recently killed buffers when calling `ivy-switch-buffer'
	    (setq ivy-use-virtual-buffers t)
	    (setq ivy-virtual-abbreviate 'abbreviate)
	    (setq ivy-count-format "(%d/%d) ")

	    ;; Do not show "./" and "../" in the `counsel-find-file' completion list
	    (setq ivy-extra-directories nil))
  :bind ("C-x b" . ivy-switch-buffer))

(use-package swiper
  :bind ("C-s" . swiper))

(use-package counsel
  :bind (("M-x"     . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)))


;;--------------------------------------------------------------------------------------------------
;; Company for text completion
;;--------------------------------------------------------------------------------------------------

(use-package company
  :hook (prog-mode . company-mode))


;;--------------------------------------------------------------------------------------------------
;; The silver searcher
;;--------------------------------------------------------------------------------------------------

(use-package ag
  :config (setq ag-executable "/usr/local/bin/ag"
		ag-arguments '("--smart-case")
		ag-reuse-buffers t))


;;--------------------------------------------------------------------------------------------------
;; Projectile for project management
;;--------------------------------------------------------------------------------------------------

(use-package projectile
  :config
  (projectile-mode 1)
  (setq projectile-completion-system 'ivy)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))

;;--------------------------------------------------------------------------------------------------
;; It's Magit!
;;--------------------------------------------------------------------------------------------------

(use-package magit
  ;; Rebind key sequences
  :bind (("C-x g"   . nil)
	 ("C-x M-g" . nil)
	 ("C-c M-g" . nil)
	 ("C-c g g" . magit-status)
	 ("C-c g d" . magit-dispatch-popup)
	 ("C-c g f" . magit-file-popup)))


;;--------------------------------------------------------------------------------------------------
;; Paredit for lisps
;;--------------------------------------------------------------------------------------------------

(use-package paredit
  :commands paredit-mode
  :hook ((emacs-lisp-mode . paredit-mode)))


;;--------------------------------------------------------------------------------------------------
;; Markdown
;;--------------------------------------------------------------------------------------------------

(defun set-markdown-command (fmt)
  (setq markdown-command (concat "/usr/local/bin/pandoc -t html -f " fmt " --metadata pagetitle='Markdown'")))

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
