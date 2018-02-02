;;========================================
;;BASIC CONFIGURATIONS
;;========================================

;; Remove beckup file
(setq make-backup-files nil)

;; Rebind Alt as Meta
(setq x-alt-keysym 'meta)

;; Configuration "SintassiC" teme
(custom-set-variables
 '(custom-enabled-themes (quote (SintassiC)))
 '(custom-safe-themes
   (quote
    ("f5839c3063cf75d706bdea19826de7642a56381fcce2145d27fafb10420f528c" "5fccaf1cd74474f68d9475aef3f82690f3db2d488d43bb76ebb81c6223a69965" default))))
(custom-set-faces
 )



;;========================================
;;CUSTOM MACROS
;;========================================
    
;; Add "save-macro" macro
(defun save-macro (name)
  "Save a macro. Take a name as argument and save the last defined macro unde this name at the end of your init.el"
  (interactive "SName of the macro: ")
  (kmacro-name-last-macro name)
  (find-file user-init-file)
  (goto-char (point-max))
  (newline)
  (insert-kbd-macro name)
  (newline)
;;autosaving and quit buffer
  (save-buffer)
  (kill-buffer))
;;if you prefer to check the modified file before saving
;;  (switch-to-buffer nil))

;; Add "main" macro
(fset 'main
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("#include <stdio.h>int main() {return 0;}	" 0 "%d")) arg)))

;; Add "i" macro
(fset 'i
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){}" 0 "%d")) arg)))

;; Add "ie" macro
(fset 'ie
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){}else{?}" 0 "%d")) arg)))

;; Add "w" macro
(fset 'w
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("while(){}" 0 "%d")) arg)))

;; Add "ovim" macro
(fset 'ovim
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))

;; Add "Ovim" macro
(fset 'Ovim
      (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))


;;========================================
;;COMMENTED
;;========================================

;; Add "ide" macro
;;(defun ide ()
;;  "Divide screen in three parts, one for shell, one for source code, one for compiler buffer"
;;  (split-window-right)
;;  (shrink-window-horizontally 20)
;;  (split-window-below)
;;  (shrink-window 7)
;;  (shell))
;;ERROR: not a keyboard macro.

;;========================================
;;KEYSTROKES
;;========================================

;; Creo scorciatoia tastiera per Ovim
(global-set-key (kbd "M-o") 'Ovim)

;; Creo scorciatoia tastiera per ovim
(global-set-key (kbd "C-o") 'ovim)

;; Creo scorciatoia tastiera per open-line (ex C-o)
(global-set-key (kbd "M-RET") 'open-line)



;;========================================
;;NOT ORDERED CONFIGURATION
;;========================================




(fset 'ide
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("3220{5xshrei	xshellobco	" 0 "%d")) arg)))

