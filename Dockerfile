FROM python
COPY server.py .

ENTRYPOINT [ "python3", "server.py" ]
