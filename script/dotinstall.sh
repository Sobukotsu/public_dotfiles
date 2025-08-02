#!/bin/sh

# Check Backup Directory #
function check_backup() {
  if [ ! -d "$HOME/.dotbackups" ]; then
    echo "Not Found dotfiles backup directory. Make now..."
    mkdir $HOME/.dotbackups
  else
    echo "Backup directory is exist."
  fi
}

# Refuge Origin Dotfiles And Copy Dotfiles #
function dotfiles_configuration() {
  local dotfile_dir=$1
  #echo "dodfile_dir: $dotfile_dir"

  if [[ "$HOME != $dotfile_dir" ]]; then
    for f in $dotfile_dir/.??*; do
      [[ $(basename $f) == ".git" ]] && continue
      if [[ -d "$HOME/$(basename $f)" ]]; then
        if [[ $(basename $f) == ".config" ]]; then
          #"-L" is judgement "Symbolic link".
          if [[ -L "$HOME/$(basename $f)" ]]; then
            unlink $HOME/$(basename $f)
          fi
          
          #echo "$dotfile_dir/$(basename $f)"
          for cf in $dotfile_dir/$(basename $f)/*; do 
            if [[ -e "$HOME/.config/$(basename $cf)" ]]; then
              # If Directory exist in .dotbackups, can't move Directory So remove directory.
              rm -r $HOME/.dotbackups/.config/$(basename $cf)
              mv $HOME/.config/$(basename $cf) $HOME/.dotbackups/.config
            fi
            cp -r $cf $HOME/.config
          done
        fi

      else
        if [[ -L "$HOME/$(basename $f)" ]]; then
          unlink $HOME/$(basename $f)
        fi
        if [[ -e "$HOME/$(basename $f)" ]]; then
          mv $HOME/$(basename $f) $HOME/.dotbackups/
        fi
        cp $f $HOME
      fi
    done
  else
    echo "same install src dest"
  fi
}

function main(){
  # Check Backup Directory #
  echo "Check Backup Directory"
  check_backup
  sleep 1
  echo ""
  
  # Refuge and Configuration #
  echo "Refuge and Configuration Dotfiles"
  dotfiles_configuration $1 $2
  # Display Message #
  echo "Finish Dotfiles Install"
}

# Define Directory Path #
script_dir=$(cd $(dirname ${BASH_SOURCE:-$0}); pwd)
dotfile_dir=$(dirname ${script_dir})

# Exe #
main $dotfile_dir

