# our base image
FROM python:3.9-slim

# set working directory inside the image
WORKDIR /app

# copy our requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY setup.py ./
RUN pip install -e .

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# copy this folder contents to image
COPY . .

# run the application
# CMD ["./"]
