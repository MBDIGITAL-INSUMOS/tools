cd ~/workspace/odoo-dev/server/12/tools
sh repo-adhoc.sh
sh repo-oca.sh
sh repo-itpp-labs.sh
sh repo-regaby.sh
#sh repo-crumges.sh
cd ~/workspace/odoo-dev/server/12/sources
find . -name "oca_dependencies.txt" -type f -delete
cd ~/workspace/odoo-dev/server/12/
sources bin/activate
cd ~/workspace/odoo-dev/server/12
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
cd ~/workspace/odoo-dev/server/12
rm odoo.conf
cd ~/workspace/odoo-dev/server/12
odoo/odoo-bin -c odoo.conf -s --stop-after-init --db_host=localhost --db_user=odoo --db_password=odoo
find ~/workspace/odoo-dev/server/12/sources -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','
