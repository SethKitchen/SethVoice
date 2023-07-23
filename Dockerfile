FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime
RUN apt update
RUN apt install ffmpeg -y
RUN apt install gcc build-essential g++ python3-dev libxml2-dev libxslt1-dev zlib1g-dev -y
RUN python3 -m pip install pyarrow fairseq jupyterlab
