;; Utility functions
;; usage:
;; (load "utils.lisp")

(in-package :stumpwm)

(export '(global-set-key))

(defun global-set-key (key command)
  "Define a global keybinding (use `*top-map*')."
  (define-key *top-map* key command)
  )

(defun run-shell-commands (commands)
  "Run a list of shell commands."
  (dolist (command commands)
    (run-shell-command command))
  )
