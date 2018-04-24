1 #!/bin/sh
  2 #
  3 # A git hook to make sure user.email and user.mail in repositor    y  exists before committing
  4
  5 global_email=$(git config --global user.email)
  6 global_name=$(git config --global user.name)
  7
  8 repository_email=$(git config user.email)
  9 repository_name=$(git config user.name)
 10
 11 if [ -z "$repository_email" ] || [ -z "$repository_name" ] || [     -n "$global_email" ] || [ -n "$global_name" ]; then
 12     # user.email is empty
 13     echo "ERROR: [pre-commit hook] Aborting commit because user    .email or user.name is missing. Configure them for this reposit    ory. Make sure not to configure globally."
 14     exit 1
 15 else
 16     # user.email is not empty
 17     exit 0
 18 fi
