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

(if (eq system-type 'darwin)
  (set-frame-font "Source Code Pro for Powerline 14")
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

(use-package bliss-theme
  :config
  (load-theme 'bliss t))

(use-package fancy-battery
  :config
  (setq fancy-battery-show-percentage t)
  (fancy-battery-mode 1))

(use-package all-the-icons
  ;; Run this once for installation
  ;; (all-the-icons-install-fonts)
  )

(use-package telephone-line
  :config
  (setq telephone-line-lhs
        '((accent . (telephone-line-vc-segment
                     telephone-line-process-segment))
          (nil    . (telephone-line-buffer-name-segment
                     telephone-line-buffer-modified-segment
                     telephone-line-flycheck-segment))))
  (setq telephone-line-rhs
        '((nil    . (telephone-line-misc-info-segment))
          (accent . (telephone-line-major-mode-segment))))
  (telephone-line-mode t))

(provide 'setup-ui)
