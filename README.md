# 차량 차종/연식 탐지 모델

## 실행 방법 (Detect)

* 차량 인식 도커 컨테이너  실행 및 접속
```
sudo docker start car-cctv
sudo docker attach car-cctv
```

* 이미지 업로드 (  ./input  )

* detect.py 실행
```
python detect.py
```

###### detect.py 파라미터 세부정보
```
--cfg {학습 모델 구성도 파일 경로}
--names {차종_연식 레이블 리스트 파일 경로}
--weights {학습 완료된 모델 정보 파일 경로}
--source {입력 이미지 폴더 경로}
--output {출력 결과 저장 폴더 경로}
--conf-thres {object confidence threshold 값}
--iou-thres {IOU threshold 값}
```

* ./output/이미지 파일 이름.txt 확인




## 실행 방법 (Test)

* 차량 인식 도커 컨테이너  실행 및 접속
```
sudo docker start car-cctv
sudo docker attach car-cctv
```

* test.py 실행
```
test.sh
```

###### Test.py 파라미터 세부정보
```
--cfg {학습 모델 구성도 파일 경로}
--names {차종_연식 레이블 리스트 파일 경로}
--weights {학습 완료된 모델 정보 파일 경로}
--source {입력 이미지 폴더 경로}
--output {출력 결과 저장 폴더 경로}
--conf-thres {object confidence threshold 값}
--iou-thres {IOU threshold 값}
```

* Test Set 성능 확인



## Directory

##### input 폴더
```
input
├── car_0.jpg
├── car_1.jpg
└── ...
```

##### test 폴더
```
preprocessed
├── 416
│   ├── e657e0fb-8f2e-40ff-b563-0d6170d61a26.jpg
│   ├── e657f5e6-c168-45bb-8095-39307d1426b5.jpg
│   └── ...
├── 417
│   ├── e6b63f1d-52ca-4a4d-8cbb-62cc896fb1b7.jpg
│   ├── e6b66302-00ee-4ddf-94a4-aa4ddd8021f4.jpg
│   └── ...
└── ...
```

##### pretrained 폴더

```
pretrained
└── best.pth
```

##### output 폴더
```
output
├── car_0.jpg
├── car_0.txt
├── car_1.jpg
├── car_1.txt
└── ...
```

## Dependency
```
Python >= 3.7
torch>=1.7.0
torchvision>=0.8.1
tensorboard>=2.2
numpy>=1.18.5
matplotlib>=3.2.2
opencv-python>=4.1.2
Pillow>= 8.0.1
scipy>=1.4.1
tqdm>=4.41.0
PyYAML>=5.3
pandas==0.24.2
Cython>= 0.28.4
pycocotools>=2.0
```

## File Download
* 도커 이미지, 테스트셋, 학습된 모델 다운로드 : 
https://gisto365-my.sharepoint.com/:f:/g/personal/youngjae_park_gm_gist_ac_kr/EiLkGHV54_tDiJ_guMjw6MEBvMJWrXZs9qjaH7yo5UqAyA?e=SIO71r

## Reference
https://github.com/ultralytics/yolov3
