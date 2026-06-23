#if [[ "$1" == "all" ]]; then
#  for d in services/*; do
#    service_name=$(basename "$d")
#    ./mvnw flyway:migrate@$service_name -P $2
#  done
#else
#  ./mvnw flyway:migrate@$1 -P $2
#fi

if [[ "$1" == "all" ]]; then
  for d in services/*; do
    service_name=$(basename "$d")
    if [[ -n "$3" ]]; then
      ./mvnw flyway:migrate@"$service_name" -P "$2" -Dflyway.target="$3"
    else
      ./mvnw flyway:migrate@"$service_name" -P "$2"
    fi
  done
else
  if [[ -n "$3" ]]; then
    ./mvnw flyway:migrate@"$1" -P "$2" -Dflyway.target="$3"
  else
    ./mvnw flyway:migrate@"$1" -P "$2"
  fi
fi