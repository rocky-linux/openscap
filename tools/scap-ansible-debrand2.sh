#!/bin/bash
# Get arguements Repo and Url.
while getopts r:u: flag
do
    case "${flag}" in
        r) repository_name=${OPTARG};;
        u) url=${OPTARG};;
    esac
done
# Uncomment for debugging Verify Arguements
#echo "$url $repository_name $help"
declare -a Debrand=("s/rhel8/rocky8/g" "s/redhat/rocky/g" "s/CentOS/Rocky/g" "s/RedHat/Rocky/g")
# If URL or Repository Name not Provided echo usage.
if [[ -z "$repository_name" ]] || [[ -z "$url" ]] || [[ ! -z "$help" ]];
then
	echo "USAGE: $0 -r RepoName (ansible-role-rhel8-stig) -u URL (https://github.com/RedHatOfficial/)\nThis will create a subfolder with the new repository under the parent folder ansible. In the directory where the script is run.";
else 
	# Create directory and git repos.
        mkdir -p ansible
        cd ansible
	git clone $url/$repository_name
	declare -a Files=(`find scripts/ansible/ -type f -not -path '*/\.*'`)
	 # For each set of Debrand run through all files and change the Name.
	for f in "${Files[@]}" 
	do
		for d in "${Debrand[@]}"
		do
# Uncomment for Debugging
#			echo sed -i $d $f
			sed -i $d $f
		done
	done
        new_repostitory_name=`echo $repository_name | sed 's/rhel8/rocky/g'`
        mv $repository_name $new_repostitory_name
fi
#Check if branding stil exists.
redhat=(`grep -rci 'redhat' ansible | grep -v .git | cut -d: -f2-`)
centos=(`grep -rci 'centos' ansible | grep -v .git | cut -d: -f2-`)
rhel8=(`grep -rci 'rhel8' ansible | grep -v .git | cut -d: -f2-`)
declare -i sumredhat
declare -i sumcentos
declare -i sumrhel8
IFS=+ sumredhat="${redhat[*]}"
IFS=+ sumcentos="${centos[*]}"
IFS=+ sumrhel8="${rhel8[*]}"
printf "Mentions of RedHat found: $sumredhat\nMentions of CentOS found: $sumcentos\nMentions of rhel8 found: $sumrhel8\n"
