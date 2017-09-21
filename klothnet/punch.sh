#!/usr/bin/env bash

# makes a punch card!

# options:
	# code:
		# DEC-029
		# IBM-029
		# IBM-026comm
		# IBM-026fort
		# IBM-EBCDIC
	# unk:
		# ignore
		# blank
		# flag
	# color:
		# yellow
		# red
		# green
	# t:
		# png
		# jpg
# for more info on options go to: http://www.kloth.net/services/cardpunch.php

type="png"

curl -G "http://www.kloth.net/services/pcard.php?" \
	--data-urlencode "punch2=${2}" \
	--data-urlencode "code=IBM-EBCDIC" \
	--data-urlencode "unk=ignore" \
	--data-urlencode "color=yellow" \
	--data-urlencode "t=${type}" \
	--output "${1}".${type}
