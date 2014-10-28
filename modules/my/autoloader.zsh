

autoload_commands=(
    uname
    hostname
)

[[ -z $ZSH_MY_AUTOLOAD ]]; export ZSH_MY_AUTOLOAD=${0:h}/autoload

for com in $autoload_commands; do
    local com_result=$($com)
    local candidate_path=$ZSH_MY_AUTOLOAD/$com.$com_result.zsh
    if [[ -f $candidate_path ]]; then
        source $candidate_path
    fi
done

