rm -rf ~/server/12/sources
mkdir ~/server/12/sources
cd ~/server/12/tools
sh repo-adhoc.sh
sh repo-oca.sh
sh repo-crumges.sh
cd ~/server/12/sources
find . -name "oca_dependencies.txt" -type f -delete
cd ~/server/12/
sources bin/activate
cd ~/server/12
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
find ~/server/12/sources -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','