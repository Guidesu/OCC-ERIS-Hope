#!/bin/bash
set -euo pipefail
<<<<<<< HEAD
# md5 !=
# md5sum -c - <<< "4d783933c74290b3a219068790b2046f *html/changelogs/example.yml"
# python3 tools/changelog/ss13_genchangelog.py html/changelog.html html/changelogs
=======

md5sum -c - <<< "4d783933c74290b3a219068790b2046f *html/changelogs/example.yml"
python3 tools/ss13_genchangelog.py html/changelogs
>>>>>>> d75ed0d4c1f195874792113784be98d2fafb211e
