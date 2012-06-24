Here there is a small starting applications menu. I have it bound to C-t "." which is symmetrical to C-t "c" :-)

    (define-stumpwm-command "mymenu" ()
      (labels ((pick (options)
                 (let ((selection (stumpwm::select-from-menu (current-screen) options "")))
                   (cond
                     ((null selection)
                      (throw 'stumpwm::error "Abort."))
                     ((stringp (second selection))
                      (second selection))
                     (t
                      (pick (cdr selection)))))))
        (let ((choice (pick *app-menu*)))
          (run-shell-command choice))))
    
    (defparameter *app-menu* '(("INTERNET"
                              ;; sub menu
	    		        ("Firefox" "firefox")
		    	        ("Skype" "skype"))
			       ("FUN"
			        ;; sub menu
    			        ("option 2" "xlogo")
	    		        ("GnuChess" "xboard"))
		    	       ("WORK"
			        ;;submenu
			        ("OpenOffice.org" "openoffice"))
			       ("GRAPHICS"
			        ;;submenu
			        ("GIMP" "gimp"))
			        ("K3B" "k3b")))
			   
