FROM python:3.10.7

WORKDIR /usr/src/app

#   Update
RUN apt update
RUN pip install --upgrade pip

#   Install the libraries in requirements.txt
# COPY requirements.txt ./
# RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./main.py" ]