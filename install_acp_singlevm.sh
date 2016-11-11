#!/bin/sh
#
#   Run the Single VM ACP install playbook
#
# -------------
#
#   10/04/16    PNT     Modified to pass the applicaiton Name
#   10/21/16    PNT    Adding support to pass singlevm parameter
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
 var_value="ansible-playbook -i singlevm-inventory  -k -v $1 -e \"application=ndvr singlevm=yes\""
 declare "$var_name=$var_value"
else
 echo "Application name is not provided using ndvr"
 var_value="ansible-playbook -i singlevm-inventory  -k -v $1 -e \"application=$2 singlevm=yes\""
 declare "$var_name=$var_value"
fi
cmd=$param
echo $cmd
eval $cmd | sudo tee /home/fldengr/install_acp.log

