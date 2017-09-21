#!/usr/bin/env bash

type="png"

# makes an ITA2 TTY tape via curl and php magic :D
# options:
	
	# t:
		# png
		# jpg
	# d:
		# known as size on the website
		# 12 (default)
		# 8
		# 10
		# 14
		# 16
# for more information, go to: http://www.kloth.net/services/ttypunch.php

curl -G http://www.kloth.net/services/ttytape.php? \
	--data-urlencode "punch1=${2}" \
	--data-urlencode "t=${type}" \
	--data-urlencode "d=12" \
	--output "${1}".${type}
