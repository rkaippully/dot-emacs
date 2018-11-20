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

(set-frame-font "Source Code Pro for Powerline 14")

(use-package idle-highlight-mode
  :config
  (setq idle-highlight-idle-time 0.25)
  (idle-highlight-mode))

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

(use-package danneskjold-theme
  :config
  (load-theme 'danneskjold t)
  (set-face-background 'hl-line "#202040"))

(use-package fancy-battery
  :config
  (fancy-battery-mode 1))

(use-package spaceline)

(use-package all-the-icons
  ;; Run this as one time font installation
  ;; (all-the-icons-install-fonts)
  )

(use-package spaceline-all-the-icons
  :after (all-the-icons spaceline fancy-battery)
  :config
  (setq spaceline-all-the-icons-separator-type 'cup)
  (spaceline-all-the-icons-theme)

  (set-face-attribute 'mode-line nil :box nil)
  (set-face-attribute 'spaceline-highlight-face nil :weight 'semi-bold :foreground "#111111" :background "#4cb5f5")
  (set-face-attribute 'powerline-active1 nil :weight 'semi-bold :foreground "#f0f0f0" :background "#484848")
  (set-face-attribute 'powerline-active2 nil :background "#2b2b2b"))


(provide 'setup-ui)
