for x in $(find . -type f -name '*.html'); do
  name=$(basename $x | sed 's/.html//g')
  if [ ! -f $name.zip ]; then
    zip -r $name.zip $name.html
  fi
done
