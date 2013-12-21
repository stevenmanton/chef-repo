# knife bootstrap localhost \
#   --sudo \
#   --ssh-user vagrant \
#   --ssh-password vagrant \
#   --ssh-port 2222 \
#   --node-name "testnode" \
#   --run-list "recipe[conda]"


# This command works!
  knife bootstrap 10.33.33.50 \
  --sudo \
  -x vagrant \
  -P vagrant \
  -p 2222 \
  -N "testnode" \
  # --run-list "recipe[conda]"