#!/bin/bash
cp ../coco_vs_paint/coco_vs_paint.js ./coco_vs_paint &&
cp -r ../coco_vs_paint/assets ./coco_vs_paint &&
git add * && git commit -m "changes in Luiz0tavio/coco_vs_paint" && git push origin master
