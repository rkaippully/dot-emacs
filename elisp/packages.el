;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Package management configuration
;;

(require 'package)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "http://melpa.org/packages/")))

(package-initialize)

;; `use-package' makes it easier to install and configure packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; `ensure' that the package is installed
(setq use-package-always-ensure t)

(defconst all-modules
  '(ui
    ivy
    popwin
    ag
    projectile
    magit
    paredit
    expand-region
    multiple-cursors
    markdown))

(dolist (m all-modules)
  (require (intern (concat "setup-" (symbol-name m)))))


(provide 'packages)
