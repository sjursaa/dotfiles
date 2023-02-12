# Aliases
alias ls="ls -lhp --color --group-directories-first"
alias cdu="cd /mnt/c/Users/Sjur"
alias ccat="highlight -O ansi --force"
alias see='explorer.exe'
alias bat='batcat'
alias cds="cd /mnt/c/Users/Sjur/Cloud/Workspace/"
<<<<<<< HEAD
alias cdc="cd /mnt/c/"


# Pomodoro timer
# Dependencies: lolcat, timer, spd-say
function pomodoro 
    echo $argv[1] | lolcat
    timer "$argv[2]"m
    #spd-say "'$argv[1]' session done" # Doesn't work on WSL
    echo -ne '\007'
end

=======
fish_vi_key_bindings
>>>>>>> 943f8be177cf6a7e103b8be6e9cd704574b586e3
