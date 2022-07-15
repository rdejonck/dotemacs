;;; rjd-theme.el: Customizations for the theme

;;; Commentary:

;;; Code:

;; Make the comment color for zenburn brighter
(setq zenburn-override-colors-alist
      '(("zenburn-green" . "#9fc59f")))

;; Use scaled headings for some headings and titles
(setq zenburn-use-variable-pitch t)

;; scale headings in org-mode
(setq zenburn-scale-org-headlines t)

;; scale headings in outline-mode
(setq zenburn-scale-outline-headlines t)

;;; rjd-theme.el ends here
