FROM python:3.8-alpine


# switch working directory
WORKDIR /app

# copy the requirements file into the image
COPY ./requirements.txt /app/requirements.txt


# install the dependencies and packages in the requirements file
RUN pip install -r requirements.txt


# copy every content from the local file to the image
COPY . /app

EXPOSE 8080

# configure the container to run in an executed manner
ENTRYPOINT [ "python3" ]

CMD ["web.py" ]
