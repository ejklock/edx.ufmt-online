# update assets as edxapp user
sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws --themes=edx.ufmt-online
EOF
# restart edx instances
/edx/bin/supervisorctl restart lms
/edx/bin/supervisorctl restart edxapp_worker:
