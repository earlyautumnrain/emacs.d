;;; init-local.el --- Own customization -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(require-package 'use-package)


;; [ Programming ] ;;

(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))


;; [ Python ] ;;
(use-package pyvenv
  :ensure t)

(use-package py-isort
  :ensure t)

;; (add-hook 'before-save-hook 'py-isort-before-save)

;; [ Style ] ;;
(dark)

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'dark))

(use-package mode-icons
  :ensure t
  :config
  (mode-icons-mode))


;; [ Project management ] ;;
(setq org-agenda-files '("~/Dropbox/org"))
(setq org-default-notes-file "~/Dropbox/org/inbox.org")
(setq org-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org/mobile.org")
(setq org-mobile-directory "~/Dropbox/Приложения/MobileOrg")


(use-package org-pomodoro
  :ensure t
  :config
  (setq org-pomodoro-length 30
        org-pomodoro-long-break-length 15
        org-pomodoro-play-sounds nil))


(use-package deft
  :ensure t
  :custom
  (deft-extensions '("org" "md" "txt"))
  (deft-directory "~/Dropbox/notes")
  (deft-use-filename-as-title t))

(use-package zetteldeft
  :ensure t
  :after deft
  :config
  (zetteldeft-set-classic-keybindings))


(provide 'init-local)
;;; init-local.el ends here
