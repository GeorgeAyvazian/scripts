#!/bin/bash
# file: CompChangeDB-2
# CompChangeDB-2.sh parameter-completion

_CompChangeDB-2 ()	#  By convention, the function name
{               	#+ starts with an underscore.
  local cur
  # Pointer to current completion word.
  # By convention, it's named "cur" but this isn't strictly necessary.

  COMPREPLY=()   # Array variable storing the possible completions.
  cur=${COMP_WORDS[COMP_CWORD]}

  case "$cur" in
    *)
    COMPREPLY=( $( compgen -W 'master 5.3 temp tulare-unstable tulare-qa \
	    			gilbert-unstable sonoma-unstable \
				sonoma-config sonoma-unstable2' -- $cur ) );;
#   Generate the completion matches and load them into $COMPREPLY array.
#   xx) May add more cases here.
#   yy)
#   zz)
  esac

  return 0
}

complete -F _CompChangeDB-2 -o default ./changeDB.sh
