FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN e_commerce_back_end create-db
RUN e_commerce_back_end populate-db
RUN e_commerce_back_end add-user -u admin -p admin
EXPOSE 5000
CMD ["e_commerce_back_end", "run"]
