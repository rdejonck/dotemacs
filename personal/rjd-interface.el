;;; rjd-interface.el: Setup look and feel elements

;;; Commentary:

;;; Code:

;; Display a line at 80 columns
(setq-default fill-column 80)
(set-face-attribute 'fill-column-indicator nil :foreground "white")
;;(setq-default display-fill-column-indicator-character "|")
(global-display-fill-column-indicator-mode)

;; Set the default frame width to 90 char (80 cols + room for line numbers)
(add-to-list 'default-frame-alist '(width . 90))

;; Configure the minimap
(setq minimap-major-modes '(prog-mode
                            markdown-mode
                            text-mode))
(setq minimap-window-location 'right)
(setq minimap-minimum-width 10)
(setq minimap-dedicated-window t)
(setq minimap-hide-cursor t)
(setq minimap-hide-scroll-bar t)
(setq minimap-hide-fringes t)
(setq minimap-width-fraction 0.10)
(minimap-mode 1)

;;; rjd-interface.el ends here
