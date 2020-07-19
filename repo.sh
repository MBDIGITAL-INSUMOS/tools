mkdir ~/server/13/sources
cd ~/server/13/tools
sh repo-adhoc.sh
sh repo-oca.sh
sh repo-crumges.sh
cd ~/server/13/sources
find . -name "oca_dependencies.txt" -type f -delete
cd ~/server/13/
sources bin/activate
cd ~/server/13
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
find ~/server/13/sources -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','

