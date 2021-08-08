FROM python:3.8.5

WORKDIR /app
ADD . /app
#ADD requirements.txt /app/
ADD setup.py /app/
RUN pip install -r requirements.txt
RUN python setup.py build_ext --inplace
ADD app.py /app/
RUN echo $(ls -ltr)
ENTRYPOINT ["python"]
RUN echo $(pwd)
CMD ["app.py"]
