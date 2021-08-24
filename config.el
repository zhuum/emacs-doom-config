;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Marcus McKinnon"
      user-mail-address "marcus.mckinnon@halliburton.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "Fira Code" :size 20))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq org-journal-date-prefix "#+TITLE: "
      org-journal-time-prefix "* "
      org-journal-date-format "%a, %Y-%m-%d"
      org-journal-file-format "%Y-%m-%d.org")

;; magit and source
(setq auth-sources '("~/.authinfo"))
(setq github.user "zhuum"
      github.HOST.user "zhuum")

(setq delete-by-moving-to-trash t)

;; IRC config
(setq erc-server "irc.libera.chat"
        erc-nick "Marcuus"     ; Our IRC nick
        erc-user-full-name "Marcus McKinnon" ; Our /whois name
        erc-track-shorten-start 8
        erc-autojoin-channels-alist '(("#systemcrafters"))
        erc-kill-buffer-on-part t
        erc-auto-query 'bury)

(setq erc-fill-column 120
      erc-fill-function 'erc-fill-static
      erc-fill-static-center 30)

(setq erc-track-exclude '("irc.libera.chat" "#systemcrafters")
      erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE" "AWAY")
      erc-hide-list '("JOIN" "NICK" "PART" "QUIT" "MODE" "AWAY")
      erc-track-exclude-server-buffer t)

(setq org-roam-directory "~/org/roam")

(setq python-black-on-save-mode t)
