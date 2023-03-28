#!/bin/bash
set -euo pipefail

tools/deploy.sh ci_test
# mkdir ci_test/config

#test config
cp tools/ci/ci_config.txt ci_test/config/config.txt

cd ci_test
<<<<<<< HEAD
DreamDaemon cev_eris.dmb -close -trusted -verbose -params "log-directory=ci"
=======
DreamDaemon liberty-station.dmb -close -trusted -verbose -params "log-directory=ci"
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
cd ..
cat ci_test/data/logs/ci/clean_run.lk
