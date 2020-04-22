(require 'package)

;; Add MELPA to package archives.
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; General settings
(setq visible-bell t
      inhibit-startup-screen t
      make-backup-files nil
      package-selected-packages '(org evil auctex))

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Enable Evil
(require 'evil)
(evil-mode 1)


;; Org-mode

;; Keybindings
(global-set-key (kbd "C-C c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)

;; Variables
(setq org-hide-leading-stars t
      org-agenda-files '("~/org/gtd.org"))

;; Hooks
(add-hook 'org-mode-hook 'auto-fill-mode)

