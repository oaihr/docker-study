
# 웹서버 실행 시키기
# 웹서버 (Nginx)

docker run --rm -d -p 8080:80 nginx

# http://localhost:8080/ 접속해서 상태 확인


# 지금 실행중인 도커 컨테이너 정보 조회
docker ps