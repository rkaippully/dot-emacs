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
  (progn
    ; Font from https://github.com/ToxicFrog/Ligaturizer
    (set-frame-font "LigaSrc Pro 17")
    (setq mac-control-modifier 'control)
    (setq mac-option-modifier 'meta)
    (setq mac-command-modifier 'super)
    (add-hook 'prog-mode-hook #'mac-auto-operator-composition-mode))

  (progn
    (set-frame-font "LigaSrc Pro 13")

    (use-package ligature
      :load-path "./elisp"
      :config
      ;; Enable ligatures in programming modes
      (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                           ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                           "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                           "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                           "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                           "..." "+++" "/==" "///" "_|_" "www" "&&&" "&&" "^=" "~~" "~@" "~="
                                           "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                           "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                           ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                           "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                           "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                           "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                           "\\\\" "://"))
      (add-hook 'prog-mode-hook #'ligature-mode))))

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
(dolist (mode '(column-number-mode
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

(add-hook 'prog-mode-hook #'display-line-numbers-mode)
(add-hook 'prog-mode-hook #'hl-line-mode)
(add-hook 'text-mode-hook #'display-line-numbers-mode)
(add-hook 'text-mode-hook #'hl-line-mode)

(use-package nerd-icons)

(use-package doom-themes
  :config
  (load-theme 'doom-monokai-spectrum t))

(use-package mood-line
  :config
  (mood-line-mode)
  :custom
  (mood-line-glyph-alist mood-line-glyphs-fira-code))


(provide 'setup-ui)
