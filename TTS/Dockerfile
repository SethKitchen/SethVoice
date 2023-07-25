FROM ghcr.io/coqui-ai/tts
RUN apt update
RUN apt install ffmpeg -y
RUN apt install gcc build-essential g++ python3-dev libxml2-dev libxslt1-dev zlib1g-dev -y
RUN python3 -m pip install pyarrow fairseq jupyterlab