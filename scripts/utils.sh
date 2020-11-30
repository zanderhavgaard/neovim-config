# terminal espace codes for a rainy day
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'

# for displaying messages that indicate the start of a process
function stmsg {
  echo -e "${YELLOW}${BOLD}--> $1${NONE}"
}

# for displaying progress
function pmsg {
  echo -e "${PURPLE}-->${NONE} ${BOLD}$1${NONE}"
}

# for errers
function errmsg {
 echo -e "${RED}${BOLD}--> $1${NONE}"
}

# general messages
function msg {
  echo -e "${BOLD}$1${NONE}"
}

# success message
function smsg {
echo -e "${BOLD}${GREEN}--> $1${NONE}"
}
