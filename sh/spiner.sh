# Função de Spinner, para animação.

readonly red='\033[31;1m'
readonly yellow='\033[33;1m'
readonly blue='\033[34;1m'
readonly pink='\033[35;1m'
readonly cyan='\033[36;1m'
readonly white='\033[37;1m'
readonly end='\033[m'

_SPINNER()
{
	local inc=0 # Var incremento
	local color="$cyan" # Cor inicial

	# O que vai ser mostrado?
    spin=(
      '='
      '=='
      '==='
      '===='
      '====='
    )

    while :; do
		# Cores aleatorias
		[[ "$inc" -gt '22' ]] && color="${red}"
		[[ "$inc" -gt '44' ]] && color="${blue}"
		[[ "$inc" -gt '66' ]] && color="${pink}"
		[[ "$inc" -gt '88' ]] && color="${yellow}"
		[[ "$inc" -gt '110' ]] && color="${white}"
		# Imprimindo
        for i in "${spin[@]}"; do
            echo -ne "${color}\r$i${end}"
			sleep 0.1s
			inc=$(($inc + 1))
        done
    done
}

_SPINNER
