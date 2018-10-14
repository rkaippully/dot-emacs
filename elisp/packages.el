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

(when (memq window-system '(mac ns x))
  (use-package exec-path-from-shell
    :init (exec-path-from-shell-initialize)))

(defconst all-modules
  '(ui
    ivy
    popwin
    ag
    string-inflection
    projectile
    magit
    parentheses
    expand-region
    multiple-cursors
    flycheck
    lsp
    clojure
    haskell
    markdown))

(dolist (m all-modules)
  (require (intern (concat "setup-" (symbol-name m)))))


(provide 'packages)
