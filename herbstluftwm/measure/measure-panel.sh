#!/bin/bash
# kill existing panels
killall conky dzen2
herbstclient emit_hook close_panel
# note $FONT is defined in autostart
conky | dzen2 -w 900 -x 540 -ta r -fn "$FONT" &
herbstclient --idle 'close_panel|tag_flags|tag_changed.*' | \
		 while read -r; do
			 		  [ "$REPLY" == "close_panel" ] && exit $?
								  herbstclient tag_status | sed -e 's/\t\.[0-9a-Z]*//g' -e 's/\t/ /g'
										 done | dzen2 -w 540 -ta l -fn "$FONT"
