for d in ./*/
do
  if [[ $d != *"_"* ]]
  then
    IFS='/' read -r -a array <<< "$d"
    echo "Compiling ${array[1]}"
    (
      cd "$d"
      jsonnet index.jsonnet -o result.json -J ../_lib/
    )
  fi
done