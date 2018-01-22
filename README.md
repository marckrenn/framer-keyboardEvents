
# framer-keyboardEvents

Hassle-free keyboard bindings for Framer: No need to look up keyCodes; supports 100+ keys with minimal performance impact. Plus, it plays nice with Framer's auto-refresh feature.
<br />
<br />
### [Example project on framer.cloud](https://framer.cloud/lHwxp)

<br />

## Getting started

<a href='https://open.framermodules.com/KeyboardEvents'>
    <img alt='Install with Framer Modules'
    src='https://www.framermodules.com/assets/badge@2x.png' width='160' height='40' /></a>

<strong>OR</strong>

| Step  | Instruction                                                                                                                                  |
| :---: | :---                                                                                                                                         |
| **1** | Download the [keyboardEvents module](https://github.com/marckrenn/framer-keyboardEvents/archive/master.zip) and unzip the downloaded archive |
| **2** | Put `keyboardEvents.coffee` into your prototype's `modules`-folder or *drag'n'drop* it onto the Framer window                                |
| **3** | Add or change the autogenerated `require`-line on the top of the code to `{keyCodes} = require 'keyboardEvents'`                             |
| **4** | Save (*CMD+S*) your project to get Framer to load the module                                                                                 |

<br />

## Usage

```coffee

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

```
<br />

### Supported keys

```coffee

exports.keyCodes = keyCodes = {

	# Speial Keys 1
	"backspace": 8
	"⌫": 8
	"tab": 9
	"⇥": 9
	"numpad5": 12
	"return": 13
	"enter": 13
	"⏎": 13
	"shift": 16
	"caps": 16
	"⇧": 16
	"ctrl": 17
	"control": 17
	"⌃": 17
	"alt": 18
	"option": 18
	"⌥": 18
	"pause": 19
	"break": 19
	"capslock": 20
	"⇪": 20
	"caps lock": 20
	"escape": 27
	"esc": 27
	"⎋": 27
	"space": 32
	"spacebar": 32
	"space bar": 32
	"␣": 32
	"pageup": 33
	"page up": 33
	"pagedown": 34
	"page down": 34
	"end": 35
	"home": 36

	# Arrows
	"left": 37
	"left arrow": 37
	"←": 37

	"up": 38
	"up arrow": 38
	"↑": 38

	"right": 39
	"right arrow": 39
	"→": 39

	"down": 40
	"down arrow": 40
	"↓": 40

	# Special Keys 2
	"print": 44
	"prnt": 44
	"screenshot": 44
	"insert": 45
	"delete": 46
	"del": 46

	# Digits
	"0": 48
	"1": 49
	"2": 50
	"3": 51
	"4": 52
	"5": 53
	"6": 54
	"7": 55
	"8": 56
	"9": 57

	# Letters
	"a": 65
	"b": 66
	"c": 67
	"d": 68
	"e": 69
	"f": 70
	"g": 71
	"h": 72
	"i": 73
	"j": 74
	"k": 75
	"l": 76
	"m": 77
	"n": 78
	"o": 79
	"p": 80
	"q": 81
	"r": 82
	"s": 83
	"t": 84
	"u": 85
	"v": 86
	"w": 87
	"x": 88
	"y": 89
	"z": 90

	# Special Keys 3
	"command": 91
	"cmd": 91
	"⌘": 91
	"windows": 91

	"command": 92
	"cmd": 92
	"⌘": 92
	"windows right": 92

	"select": 93
	"turnoff": 94
	"turn off": 94
	"sleep": 95

	# NumPad
	"numpad0": 96
	"numpad1": 97
	"numpad2": 98
	"numpad3": 99
	"numpad4": 100
	"numpad5": 101
	"numpad6": 102
	"numpad7": 103
	"numpad8": 104
	"numpad9": 105
	"numpad*": 106
	"numpad+": 107
	"numpad-": 108
	"numpad,": 109
	"numpad/": 110

	# Function Keys
	"f1": 112
	"f2": 113
	"f3": 114
	"f4": 115
	"f5": 116
	"f6": 117
	"f7": 118
	"f8": 119
	"f9": 120
	"f10": 121
	"f11": 122
	"f12": 123

	# Special Keys 4
	"numlock": 114
	"num lock": 114
	"scrolllock": 145
	"scroll lock": 145
	";": 186
	"ö": 186
	"+": 187
	",": 188
	"<": 188
	"-": 189
	"ß": 189
	"/": 189
	".": 190
	"Æ": 192
	"^": 192
	"`": 192
	"´": 219
	"ü": 219
	"½": 220
	"#": 220
	"ä": 222
	"Ø": 222
	"'": 222
	"<": 226
	",": 226
	"command": 224
	"cmd": 224
	"meta": 224
	"⌘": 224
	"wakeup": 255
	"wake up": 255 
	"´": 229
	}

```

## Contact & Help
If you need further assistance or want to leave me some feedback, you can reach me via [Twitter](https://twitter.com/marc_krenn), [Slack](https://framer-slack-signup.herokuapp.com/) or here on Github.
