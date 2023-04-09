fll() {
	printf "%0.s${2:- }" $(seq 1 "${1:-1}")
}

serialize() {
	echo "./data/${1//\//__}"
}

header() {
	cat <<EOF
  ##############
  ##  $1  ##
  ##############
EOF
}

catches() {
	# Comment lines
	if [[ "${1:0:1}" == "#" ]]; then echo 1; fi
	# Empty lines
	if [[ -z $1 ]]; then echo 2; fi
	# Exists
	if ! [[ -e ${2:-$1} ]]; then echo 3; fi
}

# deserialize() {
# 	out="${1/#.\/data\//}"
# 	echo "${dest//__/\/}"
# }
