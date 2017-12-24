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
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("#include <stdio.h>

;; Aggiungo macro "i"
(fset 'i
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){

;; Aggiungo macro "ie"
(fset 'ie
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("if(){

;; Aggiungo macro "w"
(fset 'w
   (lambda (&optional arg) "Keyboard macro." (interactive "p") (kmacro-exec-ring-item (quote ("while(){

;; Configurazioni aggiunte da Emacs