;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; UI configuration
;;


;; Show key completions
(use-package which-key
  :init (which-key-mode)
  :config (setq which-key-idle-delay 1))

(if (eq system-type 'darwin)
  (set-frame-font "Source Code Pro for Powerline 16")
  (set-frame-font "Source Code Pro for Powerline 13"))

(toggle-frame-fullscreen)

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
 scroll-conservatively 100
 display-time-format "%H:%M"
 display-time-default-load-average nil)

;;yes and no is tedious
(defalias 'yes-or-no-p 'y-or-n-p)

;; enable these modes
(dolist (mode '(global-hl-line-mode
		column-number-mode
		recentf-mode
                display-time-mode
                display-battery-mode))
  (funcall mode 1))

;; disable these modes
(dolist (mode '(tool-bar-mode
		menu-bar-mode
		scroll-bar-mode
		blink-cursor-mode))
  (funcall mode 0))

(add-hook 'prog-mode-hook #'linum-mode)
(add-hook 'text-mode-hook #'linum-mode)

(use-package all-the-icons
  ;; Run this once for installation
  ;; (all-the-icons-install-fonts)
  )

(use-package doom-themes
  :config
  (load-theme 'doom-monokai-spectrum t))

(use-package doom-modeline
  :after (doom-themes)
  :config
  (doom-modeline-mode 1))

(provide 'setup-ui)
