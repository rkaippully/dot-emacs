;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Parentheses for lisps
;;


(use-package paredit
  :hook (emacs-lisp-mode . paredit-mode))

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode)
  :init
  (custom-set-faces
   '(rainbow-delimiters-depth-1-face    ((((class color)) :foreground "#4f97d7")))
   '(rainbow-delimiters-depth-2-face    ((((class color)) :foreground "#bc6ec5")))
   '(rainbow-delimiters-depth-3-face    ((((class color)) :foreground "#2d9574")))
   '(rainbow-delimiters-depth-4-face    ((((class color)) :foreground "#67b11d")))
   '(rainbow-delimiters-depth-5-face    ((((class color)) :foreground "#b1951d")))
   '(rainbow-delimiters-depth-6-face    ((((class color)) :foreground "#4f97d7")))
   '(rainbow-delimiters-depth-7-face    ((((class color)) :foreground "#bc6ec5")))
   '(rainbow-delimiters-depth-8-face    ((((class color)) :foreground "#2d9574")))
   '(rainbow-delimiters-mismatched-face ((((class color)) :foreground "#e0211d" :overline t)))
   '(rainbow-delimiters-unmatched-face  ((((class color)) :foreground "#e0211d" :overline t)))))


(provide 'setup-parentheses)
