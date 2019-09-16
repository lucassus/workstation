# Load node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"

# Autoswitch nodejs version
function __use_project_node() {
  if [[ -s .nvmrc ]] ; then
    node_version=`cat .nvmrc`
    nvm use "$node_version"
  fi
}

chpwd_functions=("${chpwd_functions[@]}" __use_project_node)
