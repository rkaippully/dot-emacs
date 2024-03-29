;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Package management configuration
;;

(require 'package)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")
        ("melpa-stable" . "https://stable.melpa.org/packages/")))

(package-initialize)

;; `use-package' makes it easier to install and configure packages
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; `ensure' that the package is installed
(setq use-package-always-ensure t)

(when (and (memq window-system '(mac ns x))
           (not (getenv "IN_NIX_SHELL")))
  (use-package exec-path-from-shell
    :init (exec-path-from-shell-initialize)))

(defconst all-modules
  '(chronos
    dhall
    expand-region
    flycheck
    haskell
    highlight
    ivy
    lsp
    magit
    markdown
    multiple-cursors
    nix
    org
    parentheses
    plantuml
    popwin
    projectile
    protobuf
    rg
    string-inflection
    terraform
    ui
    vterm
    yaml))

(dolist (m all-modules)
  (require (intern (concat "setup-" (symbol-name m)))))


(provide 'packages)
