## for kitti raw dataset
DATASET=/data/yhe3/dataset/
TRAIN_SET=/data/yhe3/dataset/kitti_256/
STATIC_FILES=data/static_frames.txt
python data/prepare_train_data.py $DATASET --dataset-format 'kitti_raw' --dump-root $TRAIN_SET --width 832 --height 256 --num-threads 4 --static-frames $STATIC_FILES --with-depth

# # for cityscapes dataset
 #DATASET=/data/yhe3/dataset/leftImg8bit_sequence_trainvaltest/
 #TRAIN_SET=/data/yhe3/dataset/cs_256/
 #python data/prepare_train_data.py $DATASET --dataset-format 'cityscapes' --dump-root $TRAIN_SET --width 832 --height 342 --num-threads 4

 # for kitti odometry dataset
 #DATASET=/data/yhe3/dataset/kitti_odom/
 #TRAIN_SET=/data/yhe3/dataset/kitti_vo_256/
 #python data/prepare_train_data.py $DATASET --dataset-format 'kitti_odom' --dump-root $TRAIN_SET --width 832 --height 256 --num-threads 4
