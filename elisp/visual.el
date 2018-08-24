;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Configuration for "visual things"
;;


;; Show key completions 
(use-package which-key
  :init (which-key-mode))

;; nice dark theme
(use-package molokai-theme
  :init (load-theme 'molokai t))

;; sane defaults
(setq inhibit-startup-message t)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(setq scroll-conservatively 100)
(set-frame-font "Source Code Pro 14")

(global-hl-line-mode 1)

(dolist (mode '(tool-bar-mode
		menu-bar-mode
		scroll-bar-mode
		blink-cursor-mode))
  (funcall mode 0))
