# Visual
export POWERLEVEL9K_MODE=nerdfont-complete

export POWERLEVEL9K_OK_ICON=$'\u2713'
export POWERLEVEL9K_FAIL_ICON=$'\u2718'

export POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
export POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=2

export POWERLEVEL9K_STATUS_OK_BACKGROUND=239

export POWERLEVEL9K_CUSTOM_DOCKER_MACHINE=zsh_docker_machine_active
export POWERLEVEL9K_CUSTOM_TERRAFORM_ENV=tf_prompt_info

export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vcs)
export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status rbenv custom_terraform_env custom_docker_machine root_indicator background_jobs history time)

export POWERLEVEL9K_STATUS_VERBOSE=true
export POWERLEVEL9K_STATUS_OK_IN_NON_VERBOSE=false

# Import Paths
source ~/.zpath
