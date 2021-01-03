;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(add-hook! 'after-init-hook (elcord-mode))
(setq user-full-name "JD"
      user-mail-address "jellisduncan@gmail.com")

;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq doom-theme 'doom-one)

(setq display-line-numbers-type t)

