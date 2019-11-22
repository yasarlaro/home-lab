#!/bin/bash - 
#===============================================================================
#
#          FILE: jenkins_info.sh
# 
#         USAGE: ./jenkins_info.sh 
# 
#   DESCRIPTION: Display Information after initial installation
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Onur Yasarlar 
#  ORGANIZATION: Onur Lab
#       CREATED: 11/22/19 20:02
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Assumes 1st interface is private interface
# Assumes 2nd interface is public interface
private_ip=$(hostname -I | awk '{print $1}')
public_ip=$(hostname -I | awk '{print $2}')

echo "##########################################################"
echo "# Private IP: ${private_ip}" 
echo "# Public IP:  ${public_ip}"
echo "# Jenkins Initial admin password: $(cat /var/lib/jenkins/secrets/initialAdminPassword)"
echo "##########################################################"