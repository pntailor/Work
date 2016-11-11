#!/bin/sh
#
#   Run the acp install playbook
#
# -------------
#
#   09/21/16   PNT     Disclaimer added.
#
# -------------
#
# Copyright 2016 ARRIS Enterprises, LLC. All rights reserved.
#
# This program is confidential and proprietary to ARRIS Enterprises, LLC. (ARRIS),
# and may not be copied, reproduced, modified, disclosed to others, published or
# used, in whole or in part, without the express prior written permission of ARRIS.

ansible-playbook -i inventory.resources  -k -v --extra-vars "host=resource" provision-resource.yml | tee /home/fldengr/provision_resource.log
