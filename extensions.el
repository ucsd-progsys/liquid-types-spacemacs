;;; extensions.el --- liquid-types Layer extensions File for Spacemacs
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

(defvar liquid-types-pre-extensions
  '(
    ;; pre extension liquid-typess go here
    )
  "List of all extensions to load before the packages.")

(defvar liquid-types-post-extensions
  '(
    liquid-tip
    flycheck-liquid
    ;; post extension liquid-typess go here
    )
  "List of all extensions to load after the packages.")

(defun liquid-types/init-flycheck-liquid ()
  "Initialize my extension"
  (progn
    (require 'flycheck-liquid)
    (add-hook 'haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
    (add-hook 'literate-haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-liquid)))
  )
)

(defun liquid-types/init-liquid-tip ()
  "Initialize my extension"
  (progn
    (require 'flycheck-liquid)
    (require 'liquid-tip)
    (add-hook 'haskell-mode-hook
                '(lambda () (liquid-tip-mode)))
    ;; (add-hook 'haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    ;; (add-hook 'literate-haskell-mode-hook
    ;;           (lambda () (liquid-tip-init 'ascii)))
    )
  )





;; WORKS (defun liquid-types/init-liquid-types-el ()
;; WORKS   "Initialize my extension"
;; WORKS   (progn
;; WORKS     ;; liquid-types 
;; WORKS     (require 'haskell-mode)
;; WORKS     (require 'flycheck)
;; WORKS     (require 'flycheck-liquid)
;; WORKS     (require 'liquid-tip)
;; WORKS     ;; --------------------------- Liquid Flycheck --------------------------
;; WORKS     (add-hook 'haskell-mode-hook 
;; WORKS               '(lambda () (flycheck-select-checker 'haskell-liquid)))
;; WORKS     (add-hook 'literate-haskell-mode-hook 
;; WORKS               '(lambda () (flycheck-select-checker 'haskell-liquid)))
;; WORKS     (add-hook 'haskell-mode-hook
;; WORKS               'turn-on-haskell-indentation)
;; WORKS     ;; --------------------------- Liquid Tip --------------------------
;; WORKS     (add-hook 'haskell-mode-hook          
;; WORKS               (lambda () (liquid-tip-init 'ascii)))
;; WORKS     (add-hook 'literate-haskell-mode-hook
;; WORKS               (lambda () (liquid-tip-init 'ascii)))
;; WORKS     ) 
;; WORKS   )


;; For each extension, define a function liquid-types/init-<extension-liquid-types>
;;
;; (defun liquid-types/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
