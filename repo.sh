rm -rf ~/server/11/sources
mkdir ~/server/11/sources
cd ~/server/11/tools
sh repo-adhoc.sh
sh repo-oca.sh
cd ~/server/11/sources
find . -name "oca_dependencies.txt" -type f -delete
cd ~/server/11/
sources bin/activate
cd ~/server/11
./maintainer-quality-tools/travis/clone_oca_dependencies sources/ .
find ~/server/11/sources -mindepth 1 -maxdepth 1 -type d | sort | tr '\n' ','