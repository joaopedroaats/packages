enable_systemctl () {
  clear
  echo "========================================  $1  ========================================"
  sudo systemctl enable $1
  sudo systemctl restart $1
  sudo systemctl status $1
}

import_gpt (){
  gpg --keyserver pool.sks-keyservers.net --recv-keys $1
}