FROM pytorch/pytorch
RUN apt update
RUN apt upgrade -y
RUN apt update
RUN apt install ffmpeg -y
RUN apt install gcc build-essential g++ python3-dev libxml2-dev libxslt1-dev zlib1g-dev -y
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install pyarrow fairseq jupyterlab setuptools-rust
RUN python3 -m pip install --upgrade transformers sentencepiece datasets[audio]
RUN python3 -m pip install -U openai-whisper