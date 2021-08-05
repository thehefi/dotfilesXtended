#  _    _      ______ _ 
# | |  | |    |  ____(_)
# | |__| | ___| |__   _ 
# |  __  |/ _ \  __| | |
# | |  | |  __/ |    | |
# |_|  |_|\___|_|    |_|
#                      
# My fish config 2021-08-05 18:15

if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting # suppress fish greeting message

alias config='/usr/bin/git --git-dir=/home/hefi/dotfiles/ --work-tree=/home/hefi'

alias astest='Xephyr :5 & sleep 1 ; DISPLAY=:5 awesome'

neofetch
