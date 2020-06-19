python demo_coco_gcn.py \
data/coco \
--image-size 448 --batch-size 8 \
--print-freq 10 \
--epochs 40 --epoch_step 20 \
-e \
--resume checkpoint/coco/coco_checkpoint.pth.tar
# --resume checkpoint/coco/checkpoint.pth.tar
