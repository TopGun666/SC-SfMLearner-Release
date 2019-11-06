DATA_ROOT=/home/yhe3/Data/dataset/shuai/
#TEST_FILE=kitti_eval/test_files_eigen.txt
TEST_FILE=kitti_eval/shuai.txt
RESULTS_DIR=results/depth/shuai/

DISP_NET=/data/yhe3/pretrained_models/SC-SfMlearner/depth/cs+k_depth.tar

#  predict depth and save results to "results_dir/predictions.npy"
 python test_disp.py --dispnet DispResNet --img-height 256 --img-width 832 \
 --pretrained-dispnet $DISP_NET --dataset-dir $DATA_ROOT --dataset-list $TEST_FILE \
 --output-dir $RESULTS_DIR

# evaluate depth using SfMLearner original version (copy from tensorflow codes) for fair comparison
# please use python2.7
#python ./kitti_eval/eval_depth.py --kitti_dir=$DATA_ROOT \
#--test_file_list $TEST_FILE \
#--pred_file=$RESULTS_DIR/predictions.npy
