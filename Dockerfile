FROM python:3 as base
WORKDIR /root
RUN pip install ipython
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
