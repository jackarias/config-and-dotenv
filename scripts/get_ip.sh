function get_ip () {
  INTERFACE=$(ip -4 route | grep default | head -n1 | awk '{print $5}')
  if [ ! -z $INTERFACE ]; then
    echo "$(ip -4 -o addr show scope global wifi0 | awk '{print $4'} | sed 's/\/.*//')"
  else
    echo -n "||"
  fi
}
