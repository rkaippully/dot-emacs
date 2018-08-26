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
  :bind ("C-x b" . ivy-switch-buffer))

;; swiper for searching
(use-package swiper
  :bind ("C-s" . swiper))

;; smex for history in M-x
(use-package smex)

;; counsel enhances ivy
(use-package counsel
  :bind (("M-x"     . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)))

;; company for text completion in buffers
(use-package company
  :hook (prog-mode . company-mode))


(provide 'setup-ivy)
