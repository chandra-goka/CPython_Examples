# deploying .so file to the container
FROM python:3.8.5

WORKDIR /app
ADD requirements.txt /app/
ADD squares.cpython-38-darwin.so /app/
ADD app.py /app/
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
RUN echo $(pwd)
CMD ["app.py"]
