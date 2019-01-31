#!/bin/bash

# update assets as edxapp user
sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=production --debug --themes=edx.ufmt-online
#paver update_assets cms --settings=aws --debug --themes=edx
EOF

# restart lms instance
/edx/bin/supervisorctl restart lms
#/edx/bin/supervisorctl restart cms
/edx/bin/supervisorctl restart edxapp_worker:

