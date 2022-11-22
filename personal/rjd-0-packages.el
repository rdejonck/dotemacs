;;; rjd-packages.el --- rjd Emacs: My own packages apart from prelude's
;;

;;; Commentary:

;; Automatic installation of my selected packages

;;; License:

;;; Code:
(defvar rjd-packages
  `(minimap
    )
  "A list of packages to ensure are installed.")

(defun rjd-packages-installed-p ()
  "check if all packages in 'rjd-packages' are installed."
  (cl-every #'package-installed-p rjd-packages))

(defun rjd-install-packages ()
  "Install all packages listed in 'rjd-packages'."
  (unless (rjd-packages-installed-p)
    ;; Assume that prelude-install-packages already ran and refreshed the
    ;; package database
    (prelude-require-packages rjd-packages)))

;; run rjd package installation
(rjd-install-packages)

;;(require 'sublimity)
;;(require 'sublimity-scroll)
;;(require 'sublimity-map)
;;(require 'sublimity-attractive)

;; rjd-packages.el ends here
