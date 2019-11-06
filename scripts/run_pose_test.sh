KITIT_VO=/data/yhe3/dataset/kitti_odom
OUTPUT_DIR=/data/yhe3/project/SC-SfMLearner-Release/results/vo/cs+k_pose/
POSE_NET=/data/yhe3/pretrained_models/pose/cs+k_pose.tar

python test_pose.py $POSE_NET \
--img-height 256 --img-width 832 \
--dataset-dir $KITIT_VO \
--sequences 09 \
--output-dir $OUTPUT_DIR
