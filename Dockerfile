FROM  python:3.7-stretch
WORKDIR /flaskapp
COPY . .
RUN pip install -r requirements.txt
ENV JWT_SECRET=myjwtsecret
ENV LOG_LEVEL=DEBUG
EXPOSE 8080
CMD ["gunicorn", "-b", ":8080", "main:APP"]