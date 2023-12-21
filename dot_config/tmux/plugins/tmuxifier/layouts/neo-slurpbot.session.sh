# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/dox/projects/neo-slurpbot"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "neo-slurpbot"; then

  new_window "misc"
  split_h 50
  run_cmd "unimatrix"
  select_pane 1


fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
