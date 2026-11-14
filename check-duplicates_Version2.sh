for name in $(grep -oE 'name: "[^"]+"' Android.bp \
  | sed 's/name: "//; s/"$//' | sort | uniq -d); do
  echo "=== $name ==="
  grep -nF "name: \"$name\"" Android.bp
done