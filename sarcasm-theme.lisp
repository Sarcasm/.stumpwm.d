;; Sarcasm personnal theme for StumpWM
;; usage (with user-module):
;; (load-user-module "sarcasm-theme")

(in-package :stumpwm)

(defvar *wallpaper-command* "nitrogen --restore"
"Wallpaper command.")

;; Use Xcursor theme
(run-shell-command "xsetroot -cursor_name left_ptr -fg white -bg black")

(run-shell-command *wallpaper-command*)

;; Font found with the command xfontsel(1)
;; When a font is installed, add is directory to the fontPath then run xfontsel
;; xset +fp /usr/share/fonts/X11/misc/
;; (it coulb be add to the Xorg.conf with FontPath)
;; (set-font "-*-clean-*-r-*-*-12-*-*-*-*-*-iso8859-*")
(set-font "-*-terminus-*-*-*-*-12-*-*-*-*-*-iso8859-*")

(setf *input-window-gravity* :center)
(setf *message-window-gravity* :center)

(set-fg-color "white smoke")
(set-bg-color "grey20")
(set-border-color "chocolate")
(set-msg-border-width 2)
(setf *message-window-padding* 4)

;; see: http://www.nongnu.org/stumpwm/manual/stumpwm_5.html
