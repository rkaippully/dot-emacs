;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Commands and Completion


;; ivy is the main completion package
(use-package ivy
  :config
  ;; Enable ivy
  (ivy-mode 1)
  ;; Show recently killed buffers when calling `ivy-switch-buffer'
  (setq ivy-use-virtual-buffers t)
  (setq ivy-virtual-abbreviate 'abbreviate)
  (setq ivy-count-format "(%d/%d) ")
  ;; Do not show "./" and "../" in the `counsel-find-file' completion list
  (setq ivy-extra-directories nil)
  :bind (("C-x b" . ivy-switch-buffer)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill)))

;; swiper for searching
(use-package swiper
  :bind ("C-s" . swiper))

;; counsel enhances ivy
(use-package counsel
  :bind (("M-x"     . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
         ("C-h f"   . counsel-describe-function)
         ("C-h v"   . counsel-describe-variable)))

(use-package all-the-icons-ivy-rich
  :init (all-the-icons-ivy-rich-mode 1))

;; Better ivy mode
(use-package ivy-rich
  :config (ivy-rich-mode 1))

;; smex for history in M-x
(use-package smex)

;; company for text completion in buffers
(use-package company
  :hook (prog-mode . company-mode)
  :bind (("C-<tab>" . company-complete)))


(provide 'setup-ivy)
