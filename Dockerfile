FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt dev-requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt \
    pip install --no-cache-dir -r dev-requirements.txt

COPY . .
