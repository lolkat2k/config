if [ -d $1 ]; then
  IMG=$(find $1 -name "*.png" | sort -R | tail -n 1)
  i3lock -i $IMG -c 000000
else
  i3lock -c 000000
fi;
