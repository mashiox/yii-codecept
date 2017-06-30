
all:
	docker build -t yii-codecept .

mount:
	docker run -it -v $(pwd)/app:/opt/snafu yii-codecept
