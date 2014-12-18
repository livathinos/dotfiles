copy_img() {
  file_name=${1##*/}
  extension="${file_name##*.}"
  sha=$(printf '%s' "$file_name" | openssl sha1)

  full_filename=$(printf '%s.%s' "$sha" "$extension")

  scp -P"$SS_PORT" "$1" "$SS_USERNAME"@"$SS_SERVER":/"$SS_PATH"/"$full_filename"
  echo "$SS_URL/$full_filename" | pbcopy
}
