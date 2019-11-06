TRAIN_SET=/data/yhe3/dataset/kitti_256/
python train.py $TRAIN_SET \
--pretrained-disp=/data/yhe3/project/SC-SfMLearner-Release/checkpoints/cs_resnet_256/11-01-10:40/dispnet_checkpoint.pth.tar \
--pretrained-pose=/data/yhe3/project/SC-SfMLearner-Release/checkpoints/cs_resnet_256/11-01-10:40/exp_pose_checkpoint.pth.tar \
--dispnet DispResNet \
--num-scales 1 \
-b4 -s0.1 -c0.5 --epoch-size 1000 --sequence-length 3 \
--with-mask True \
--with-ssim True \
--with-gt \
--name cs+k_resnet_256