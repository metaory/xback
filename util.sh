fll() {
	printf "%0.s${2:- }" $(seq 1 "${1:-1}")
}

serialize() {
	echo "./data/${1//\//__}"
}

# deserialize() {
# 	out="${1/#.\/data\//}"
# 	echo "${dest//__/\/}"
# }
