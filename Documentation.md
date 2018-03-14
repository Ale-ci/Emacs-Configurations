# Emacs-Configurations Documentation

This is my personal configuration directory of emacs

## Keystrokes uknown or to do:

*      go to next caracter like ...
*      defaut compilation gcc
*      execute c program (in working directory /tmp)
*      uncomment this line at the beginning
*      indent this paragraph
*      move current line up (like C-x C-t)
*      move current line down
*      move current word forward
*      move current word backward

## Custom Keystrokes:

* C-c C-c		comment this line at the beginning (not workink as i wish)
* M-o			o vim command
* C-o			O vim command
* M-RET			newline but the cursor remain at his position (old standard emacs keystroke C-o)
* M-x save-macro	save a macro in init.el
* M-x i	                add if structure at your c code
* M-x ie                add if..else structure at your c code
* M-x main              add main structure to begin your c code
* M-x ide		divide screen in three parts: source code, shell and copilation buffer (if already compiled)
* C-c c			compile
* C-c r			recompile

## Standard Keystrokes:

* C-f			one caracter forward
* C-b			one caracter backward
* C-n			one line down
* C-p			one line up
* C-a			go at the beginning of line (not the beginning of indentation)
* C-e			go at the end of the line
* M-r			go at the end/center/beginning of the window with the cursor

* M-f			one word forward
* M-b			one word backward
* M-a			go at the beginning of paragraph
* M-e			go at the end of paragraph
* M-m			go at the beginning of the text in this line (beginning of the indentation)
     			
* C-s			search forward -C-r search backward
* C-t		        transpose one caracter
* C-x C-t 		transpose one line
* M-t 			transpose one word
* M-x replace-string	replace all string1 following the pointer with string2 

* C-v 			scroll one page down
* M-v			scroll one page up
* C-M-v			scroll the not selected window
* M-<			go to the top of the text
* M->		      	go to the bottom of the text

* M-u			uppercase until the end of the word
* M-c			uppercase the caracter and go at the end of the word

* C-space		set a mark
* C-u C-space		go to mark
* M-h			select the paragraph
* C-w			cut selected area between pointer and mark
* M-w 			copy selected area between pointer and mark
* C-k			kill one line of text
* M-k			kill one paragraph of text
* C-y			paste killed text
* M-y			choose what paste from the old killed text
* M-z caracter		kill text until caracter

* C-x (			begin a new macro
* C-x )			end the beginned macro
* C-e 			execute last custom macro
* C-x C-k n		rename last custom macro
* M-x nameMacro		start custom macro
* M-x insert-kbd-macro	paste emacs-lisp code of a macro 

* C-x 0			close the selected window
* C-x 1			close all the not selected windows
* C-x 2 		create a new window under the selected one
* C-x 3			create a new window near the selected one

* C-x k			kill a buffer
* C-x s			save all buffers
* C-x C-s	     	save current buffer

* C-z 			suspend emacs, recover session with fg or %emacs

* M-number		scale the following command

* C-h c keystrokes	really little description of the command
* C-h k command		description of the command
* C-h m			information about current editing mode (Fundamental/Text)

* M-x auto-fill	enable auto-fill mode
* C-x f number	        set fill column to number for auto fill text mode
* M-q 			fill paragraph
