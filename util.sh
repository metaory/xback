if ! [[ -e "./config" ]]; then
	echo "config not found!"
	exit 1
fi

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
	# Exists
	if ! [[ -e ${2:-$1} ]]; then return 3; fi
	# Empty lines
	if [[ -z $1 ]]; then return 2; fi
	# Comment lines
	if [[ "${1:0:1}" == "#" ]]; then return 1; fi
	# Default
	return 0
}

# deserialize() {
# 	out="${1/#.\/data\//}"
# 	echo "${dest//__/\/}"
# }
