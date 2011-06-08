;; Sarcasm personnal settings for MPD and StumpWM
;; usage (with user-module):
;; (load-user-module "sarcasm-keys")

(in-package :stumpwm)

(export '(sarcasm-global-key sarcasm-global-keys
          *sarcasm-prefix-modifier* *sarcasm-prefix-key*
          sarcasm-prefixed-key sarcasm-prefixed-keys))

(defvar *sarcasm-prefix-modifier* "s-"
  "Modifier to use as prefix for most command.

Example to use Super key as main modifier:
 : (setq *sarcasm-prefix-modifier* \"s-\")

note: Super is already the default prefix modifier.")

(defun sarcasm-global-key (key command)
  "Bind a global keybinding with the modifier prefix
`*sarcasm-prefix-modifier*'."
  (global-set-key (kbd (concat *sarcasm-prefix-modifier* key)) command)
  )

(defun sarcasm-global-keys (bindings)
  "Call `sarcasm-global-key' on a list with the form '((key1 .
command1) (key2 . command2) ...)"
  (dolist (keybind bindings)
    (sarcasm-global-key (car keybind) (cdr keybind)))
  )

(defvar *sarcasm-prefix-key* (concat *sarcasm-prefix-modifier* "x")
  "Key to use as prefix for commands. This prefix key aimed to be a
  replacement of the default stumpwm prefix key.

Example to use Super key as main modifier:
 : (setq *sarcasm-prefix-key* \"s-x\")

note: Super-x is already the default prefix modifier.")

(defvar *sarcasm-root-map* (make-sparse-keymap)
  "Root map for commands to run with a prefix.")

;; Set the prefix key
(sarcasm-global-key *sarcasm-prefix-key* '*sarcasm-root-map*)

(defun sarcasm-prefixed-key (key command)
  "Bind a global keybinding with the prefix key
`*sarcasm-prefix-key*'."
  (define-key *sarcasm-root-map* (kbd key) command)
  )

(defun sarcasm-prefixed-keys (bindings)
  "Call `sarcasm-prefixed-key' on a list with the form '((key1 .
command1) (key2 . command2) ...)"
  (dolist (keybind bindings)
    (sarcasm-prefixed-key (car keybind) (cdr keybind)))
  )
