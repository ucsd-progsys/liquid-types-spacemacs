;;; packages.el --- liquid-types Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar liquid-types-packages
  '(
    flycheck
    haskell-mode
    button-lock
    pos-tip
    popup
    thingatpt
    (liquid-tip :location local)
    (flycheck-liquid :location local)
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun liquid-types/init-button-lock ())


(defvar liquid-types-excluded-packages '()
  "List of packages to exclude.")

(defun liquid-types/post-init-flycheck ()
  (use-package flycheck))

(defun liquid-types/post-init-haskell-mode ()
  (use-package haskell-mode))

(defun liquid-types/post-init-popup ()
  (use-package popup))

(defun liquid-types/init-pos-tip ()
  (use-package pos-tip))

(defun liquid-types/init-thingatpt ()
  (use-package thingatpt))

(defun liquid-types/pre-init-flycheck-liquid ()
  (use-package flycheck-liquid))

(defun liquid-types/init-flycheck-liquid ()
  "Initialize my extension"
  (progn
    (add-hook 'haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
    (add-hook 'literate-haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
    )
  )

(defun liquid-types/pre-init-liquid-types ()
  (progn (use-package flycheck-liquid)
         (use-package liquid-tip)))

(defun liquid-types/init-liquid-tip ()
  "Initialize my extension"
  (progn
    (add-hook 'haskell-mode-hook
              '(lambda () (liquid-tip-mode)))
    ;; (add-hook 'haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    ;; (add-hook 'literate-haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    )
  )





;; (defun liquid-types/init-liquid-types-el ()
;;   "Initialize my extension"
;;   (progn
;;     ;; liquid-types
;;     (require 'haskell-mode)
;;     (require 'flycheck)
;;     (require 'flycheck-liquid)
;;     (require 'liquid-tip)
;;     ;; --------------------------- Liquid Flycheck --------------------------
;;     (add-hook 'haskell-mode-hook
;;               '(lambda () (flycheck-select-checker 'haskell-liquid)))
;;     (add-hook 'literate-haskell-mode-hook
;;               '(lambda () (flycheck-select-checker 'haskell-liquid)))
;;     (add-hook 'haskell-mode-hook
;;               'turn-on-haskell-indentation)
;;     ;; --------------------------- Liquid Tip --------------------------
;;     (add-hook 'haskell-mode-hook
;;               (lambda () (liquid-tip-init 'ascii)))
;;     (add-hook 'literate-haskell-mode-hook
;;               (lambda () (liquid-tip-init 'ascii)))
;;     )
;;   )


;; For each extension, define a function liquid-types/init-<extension-liquid-types>
;;
;; (defun liquid-types/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
