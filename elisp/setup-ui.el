;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; UI configuration
;;


;; Show key completions
(use-package which-key
  :init (which-key-mode))

(set-frame-font "Source Code Pro for Powerline 15")

(use-package spaceline)

(use-package all-the-icons
  ;; Run this as one time font installation
  ;; (all-the-icons-install-fonts)
  )

(use-package spaceline-all-the-icons
  :after (all-the-icons spaceline)
  :config (spaceline-all-the-icons-theme))

(use-package kaolin-themes
  :config
  (load-theme 'kaolin-ocean t))

(setq
 ;; sane defaults
 inhibit-startup-message t
 initial-scratch-message nil
 visible-bell nil
 ring-bell-function 'ignore
 recentf-max-saved-items 100
 scroll-conservatively 100)

;;yes and no is tedious
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable these modes
(dolist (mode '(global-hl-line-mode
		column-number-mode
		recentf-mode))
  (funcall mode 1))

;; disable these modes
(dolist (mode '(tool-bar-mode
		menu-bar-mode
		scroll-bar-mode
		blink-cursor-mode))
  (funcall mode 0))


(provide 'setup-ui)
