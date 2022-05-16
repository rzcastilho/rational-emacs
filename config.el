;;; example-config.el -- Example Rational Emacs user customization file -*- lexical-binding: t; -*-

;;; Commentary:
;;
;; Rational Emacs supports user customization through a `config.el' file
;; similar to this one.  You can copy this file as `config.el' to your
;; Rational Emacs configuration directory as an example.
;;
;; In your configuration you can set any Emacs configuration variable, face
;; attributes, themes, etc as you normally would.
;;
;; See the README.org file in this repository for additional information.

;;; Code:
(require 'rational-defaults)
(require 'rational-screencast)
(require 'rational-ui)
(require 'rational-editing)
(require 'rational-completion)
(require 'rational-org)
(require 'rational-project)
(require 'rational-speedbar)
(require 'rational-updates)

(require 'rational-ide)

;; Set further font and theme customizations
(custom-set-variables
   '(rational-ui-default-font
     '(:font "JetBrains Mono" :weight light :height 120)))
;; Load theme
(load-theme 'doom-dracula t)

;; Backup files
(setq backup-directory-alist `(("." . ,(expand-file-name "tmp/backups/" user-emacs-directory))))

;; Lock files
(setq create-lockfiles nil)

;; Auto save files
;; auto-save-mode doesn't create the path automatically!
(make-directory (expand-file-name "tmp/auto-saves/" user-emacs-directory) t)

(setq auto-save-list-file-prefix (expand-file-name "tmp/auto-saves/sessions/" user-emacs-directory)
      auto-save-file-name-transforms `((".*" ,(expand-file-name "tmp/auto-saves/" user-emacs-directory) t)))

;; To not load `custom.el' after `config.el', uncomment this line.
(setq rational-load-custom-file nil)

;;; example-config.el ends here
