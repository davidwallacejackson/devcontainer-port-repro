echo "Starting server -- try accessing at http://localhost:8000"
docker build . -t test
docker run -it -p 8000:8000 test
