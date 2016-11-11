#!/bin/sh
#
#   Run the acp install playbook
#
# -------------
#
#   09/20/16    PNT     Modified to pass the applicaiton Name
#   09/22/16    PNT     Minor updates
#
# -------------
#
# Copyright 2016 ARRIS Enterprises, LLC. All rights reserved.
#
# This program is confidential and proprietary to ARRIS Enterprises, LLC. (ARRIS), 
# and may not be copied, reproduced, modified, disclosed to others, published or 
# used, in whole or in part, without the express prior written permission of ARRIS.
#

var_name="param"

if [[ $2 == "" ]]; then
 echo "Application name is not provided using ndvr"
 var_value="ansible-playbook -i inventory  -k -v $1 -e \"application=ndvr singlevm=no\""
 declare "$var_name=$var_value"
else
 echo "Application name is not provided using ndvr"
 var_value="ansible-playbook -i inventory  -k -v $1 -e \"application=$2 singlevm=no\""
 declare "$var_name=$var_value"
fi
cmd=$param
echo $cmd
eval $cmd | sudo tee /home/fldengr/install_acp.log

