if [[ "$1" == "migrate" ]]; then
  if [[ "$2" == "all" ]]; then
    for d in services/*; do
      service_name=$(basename "$d")
      ./mvnw flyway:migrate@$service_name -P $3
    done
  else
    ./mvnw flyway:migrate@$1 -P $3
  fi
fi

if [[ "$1" == "make-migration" ]]; then
  path=./services/$2/migrations/$3__$4.sql
  if [ -e $path ]
  then
      echo "migration exists $path"
  else
      touch $path
      echo "created migration success $path"

      open $path
  fi
fi

if [[ "$1" == "last-version" ]]; then
  path=./services/$2/migrations/V$3__$4.sql
  ls -ltr ./services/$2/migrations | tail -n 1
fi
