;; Elimino file di beckup
(setq make-backup-files nil)

;; Rimappo Alt come Meta
(setq x-alt-keysym 'meta)



;; Configurazione tema SintassiC
(custom-set-variables
 '(custom-enabled-themes (quote (SintassiC)))
 '(custom-safe-themes
   (quote
    ("f5839c3063cf75d706bdea19826de7642a56381fcce2145d27fafb10420f528c" "5fccaf1cd74474f68d9475aef3f82690f3db2d488d43bb76ebb81c6223a69965" default))))
(custom-set-faces
 )





;; Aggiungo macro "main"
(fset 'main
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("#include <stdio.h>int main() {return 0;}	" 0 "%d")) arg)))

;; Aggiungo macro "i"
(fset 'i
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){}" 0 "%d")) arg)))

;; Aggiungo macro "ie"
(fset 'ie
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){}else{?}" 0 "%d")) arg)))

;; Aggiungo macro "w"
(fset 'w
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("while(){}" 0 "%d")) arg)))

;; Aggiungo macro "Ovim"
(fset 'Ovim
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))

;; Aggiungo macro "ovim"
(fset 'ovim
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))




;; Creo scorciatoia tastiera per Ovim
;; (define-key global-map [C-m] 'ovim)    ;; NON Funziona!!


;; Creo funzione per salvare le macro
(defun save-macro (name)
  "Save a macro. Take a name as argument and save the last defined macro unde this name at the end of your init.el"
  (interactive "SName of the macro: ")
  (kmacro-name-last-macro name)
  (find-file user-init-file)
  (goto-char (point-max))
  (newline)
  (insert-kbd-macro name)
  (newline)
  (switch-to-buffer nil))
;;aggiungere autosalvataggio


;; Configurazioni aggiunte da Emacs da ordinare
