;; Creation of project groups
;; usage (with user-module):
;; (load-user-module "sarcasm-projects")

(in-package :stumpwm)

(defvar strace-directory "/mnt/media/projects/C/strace/strace/"
  "Strace directory."
)

(grename "misc")
(gnew "strace - Emacs")
(run-shell-command (concat "emacsclient -c " strace-directory))

;; Voir Emacs Wiki StumpWM
;; http://www.emacswiki.org/emacs/StumpWM
;; defcommand wanderlust () ()
;; 	    (emacs)
;; 	    (send-meta-key (current-screen) (kbd "M-x"))
;; 	    (window-send-string "wl")
;; 	    (send-meta-key (current-screen) (kbd "RET")))
;; (send-meta-key (current-screen) (kbd "C-x"))
;; (window-send-string "3")

(gnew "strace - Build & Test")
(run-shell-command (concat "urxvtc -cd " strace-directory))

(gnew "strace - Doc")
(run-shell-command (concat "emacsclient -c " strace-directory))
(hsplit)
(move-focus :right)
(run-shell-command (concat "urxvtc -cd " strace-directory))

(gnew "strace - Include")
(run-shell-command (concat "emacsclient -c /usr/include/sys/users.h"))
