function source_dotenv {
  [[ -f $PWD/.env ]] && source $PWD/.env
}

chpwd_functions+=source_dotenv
