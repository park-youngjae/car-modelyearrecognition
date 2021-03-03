python3 test.py --data /raid/jinhwi/yolo_file/preprocess/obj_test.data --weights=pretrained/best.pt --conf-thres=0.05 --iou-thres=0.5 --save-json --img-size 416 --cfg cfg/yolov3-spp-cctv-final.cfg --batch-size 64
python3 timestamp.py
