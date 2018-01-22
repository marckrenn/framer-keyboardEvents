

# You can listen to 3 different keyboardEvents:

# 1) Canvas.onKeyDown  – fires when the key is pressed
# 2) Canvas.onKeyUp    – fires when the key is released
# 3) Canvas.onKeyPress – fires after key is pressed and then released

Canvas.onKeyDown "down", ->
	print "Down"
	# Do stuff


# Some keys – like 'up' – have synonyms like 'up arrow' and '↑'

Canvas.onKeyUp "up",        -> print "Up"
#Canvas.onKeyUp "up arrow", -> print "Up arrow"
#Canvas.onKeyUp "↑",        -> print "↑"


Canvas.onKeyPress "return", (ev) ->

	# Use of modifier keys
	if      ev.shiftKey then print "⇧ + ⏎"
	else if ev.ctrlKey  then print "⌃ + ⏎"
	else if ev.altKey   then print "⌥ + ⏎"
	else if ev.metaKey  then print "⌘ + ⏎"
	else                     print "⏎"



