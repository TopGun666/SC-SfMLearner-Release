DATASET_DIR=/data/yhe3/dataset/kitti_odom/sequences/
OUTPUT_DIR=/data/yhe3/project/SC-SfMLearner-Release/results/vo/cs+k_pose

POSE_NET=/data/yhe3/pretrained_models/SC-SfMlearner/pose/cs+k_pose.tar

# save the visual odometry results to "results_dir/09.txt"
python test_vo.py \
--img-height 256 --img-width 832 \
--sequence 09 \
--pretrained-posenet $POSE_NET --dataset-dir $DATASET_DIR --output-dir $OUTPUT_DIR/

# show the trajectory with gt. note that use "-s" for global scale alignment
evo_traj kitti -s $OUTPUT_DIR/09G.txt --ref=./kitti_eval/09.txt -p --plot_mode=xz

 
