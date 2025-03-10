#     ██████╗ ██████╗ ███╗   ███╗██████╗  █████╗ ███╗   ██╗██╗   ██╗   ███████╗███████╗██╗  ██╗
#    ██╔════╝██╔═══██╗████╗ ████║██╔══██╗██╔══██╗████╗  ██║╚██╗ ██╔╝   ╚══███╔╝██╔════╝██║  ██║
#    ██║     ██║   ██║██╔████╔██║██████╔╝███████║██╔██╗ ██║ ╚████╔╝      ███╔╝ ███████╗███████║
#    ██║     ██║   ██║██║╚██╔╝██║██╔═══╝ ██╔══██║██║╚██╗██║  ╚██╔╝      ███╔╝  ╚════██║██╔══██║
# ██╗╚██████╗╚██████╔╝██║ ╚═╝ ██║██║     ██║  ██║██║ ╚████║   ██║   ██╗███████╗███████║██║  ██║
# ╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝
# https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=ANSI%20Shadow&text=.company.zsh

# Cumulocity
function c8y_aws_env {
    ENV=${1:-*}
    STATE=${2:-running}
    REGION=${3:-eu-north-1}

    if [[ $ENV == "-h" || $ENV == "--help" ]]; then
        echo "Usage: c8y_aws_env [ENV_NAME] [STATE]"
        echo "ENV: environment name, default: *"
        echo "STATE: instance state, default: running"
        echo "REGION: AWS region, default: eu-north-1"
        echo ""
        echo "Example: c8y_aws_env \"*dev-x*\""
        echo "Example: c8y_aws_env \"calico*\" \"running\""
        echo "Example: c8y_aws_env \"offline*core2\" \"*\""
        echo "Example: c8y_aws_env \"offline*\" \"*\" \"eu-west-1\""
        return
    fi

    aws ec2 describe-instances \
        --profile c8y \
        --filters \
            Name=tag:Name,Values=${ENV} \
            Name=instance-state-name,Values=${STATE} \
        --region ${REGION} \
        --query "Reservations[].Instances[].{A_Name:Tags[?Key=='Name']|[0].Value, B_PrivIP:PrivateIpAddress, C_PubIP:PublicIpAddress, D_State:State.Name, E_AMI:ImageId}" \
        --output table \
        --color on \
    | cat
}

function c8y_aws_env_start {
    ENV=${1:-''}
    REGION=${2:-eu-north-1}

    # fail if no ENV is provided
    if [[ "${ENV}" == "" ]]; then
        echo "Usage: c8y_aws_env_start [ENV_NAME]"
        echo "ENV: environment name"
        echo ""
        echo "Example: c8y_aws_env_start \"dev-x\""
        echo "Example: c8y_aws_env_start \"calico-fix*\""
        return
    fi

    aws ec2 start-instances \
        --profile c8y \
        --region ${REGION} \
        --instance-ids \
            `aws ec2 describe-instances \
                --profile c8y \
                --output=text \
                --filters Name=tag:Name,Values=${ENV} \
                --region ${REGION} \
                --query 'Reservations[*].Instances[*].{Instance:InstanceId}'` \
        --query 'Reservations[*].Instances[*].{Instance:InstanceId}' \
        --output=table | cat
}
