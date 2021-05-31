Placeholder directory for conversion tools for SCAP & STIG content

RepoName Bash Script.
        This script is provided to download OpenSCAP Enterprise Linux Ansible Repositories and change them to function with Rocky Linux.
        Contact information: https://github.com/rocky-linux/openscap/

        Usage: bash ./RepoName [-u URL] [-r Repo Name] [-a All Repos] [-V Version] [-o OS Repo Version]
        If no repository is given it will assume you want all repositoris from Enterprise Linux 8.

        -V Version      Print the version of this script.
        -a              Do all Repositories for given URL.
        -r              Name of the repository to Download
        -u              URL of the repos you want to download and rebrand.
        -o              OS repo version default is Enterprise Linux 8
        -h              Print this Message

        Examples: 
            Get ansible-role-rhel8-stig repository and change the branding.
            ./RepoName -u https://github.com/RedHatOfficial/ -r ansible-role-rhel8-stig

            Get all rhel8 repositories and change the branding.
            ./RepoName -u https://github.com/RedHatOfficial/ -a
