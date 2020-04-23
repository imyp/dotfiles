;; General settings
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(defun choose-initial-buffer ()
  (if (= 1 (length command-line-args))
      "~/.org/gtd.org" nil))

(setq visible-bell t
      inhibit-startup-screen t
      make-backup-files nil
      initial-buffer-choice (choose-initial-buffer))


;; Manage packages
(require 'package)

;; Add MELPA to package archives.
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(setq package-selected-packages '(org evil auctex))

(package-initialize)



;; Enable Evil
(require 'evil)
(evil-mode 1)


;; Org-mode

;; Keybindings
(global-set-key (kbd "C-C c") 'org-capture)
(global-set-key (kbd "C-c a") 'org-agenda)


;; Variables
(setq org-hide-leading-stars t
      org-agenda-files '("~/.org/gtd.org")
      org-default-notes-file "~/.org/gtd.org"
      org-refile-targets '("~/.org/gtd.org"))

;; Hooks
(add-hook 'org-mode-hook 'auto-fill-mode)

