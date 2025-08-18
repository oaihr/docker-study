# 도커 이미지

# 도커 허브 (이미지 관리 온라인 사이트)
# https://hub.docker.com/

# 도커 허브에서 이미지 다운로드
docker pull nginx

# docker run으로 실행 시, 이미지가 없으면 알아서 다운로드

# 보유하고 있는 이미지 목록 조회
docker images
docker image ls

# 이미지 삭제하기
docker image rm 이미지 이름 or ID
docker rmi 이미지 이름 or ID

# 다운로드 받은 nginx 이미지로 컨테이너 실행
docker run --name ngx-server -d -p 8080:80 nginx

# 실행중인 도커 컨테이너 종료(삭제)
docker rm -f ngx-server

# 이미지로 컨테이너 실행
# 다운로드 받은 nginx 이미지로 컨테이너 실행
docker run -p 8080:80 nginx

# docker run : 포그라운드 실행
# docker run -d : 백그라운드 실행

docker run -d -p 8080:80 nginx

# --name : 컨테이너 별칭(이름) 지정
docker run -d -p 8080:80 --name ngx1 nginx
docker run -d -p 9090:80 --name ngx2 nginx
# -p 포트매핑 호스트포트:컨테이너포트


# 실행중인 컨테이너 삭제
docker rm -f ngx1
docker rm -f ngx2


# 컨테이너 종료
docker stop 컨테이너 이름 or ID #윈도우->시작->전원->시스템 종료
docker kill 컨테이너 이름 or ID #강제 종료

# 중지된 컨테이너 실행
docker start 컨테이너 이름 or ID

# 컨테이너 삭제
docker rm       #삭제
docker rm -f    #강제삭제
