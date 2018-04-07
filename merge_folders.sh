if [ ! -d './merged' ]; then
  mkdir ./merged
fi

find data/ -name '*.*' -exec mv '{}' merged/ \;
