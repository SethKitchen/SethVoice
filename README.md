# SethVoice
Making an AI voice from my speaking

# My Voice Files
Seth .wav files exist in seth/wavs and follows the LJ Speech Dataset

# FairSeq

I initially tried using fairseq for speech synthesis, but didn't have great results (even just using the documented model) - I think the vocoder is bad. 

Use 

> docker build -t test .

to build the fairseq docker image with tagname: test

Then move one directory back (so results files can be generated outside github repo)

Then run the image using

> docker run --rm -it --entrypoint bash -v .:/workspace --gpus all -p 8888:8888 test

And start the jupyter lab server with

> jupyter lab --ip='0.0.0.0' --allow-root

Use the link provided i.e. http://127.0.0.1:8888/[token] to see jupyter in your browser.

Then run the notebooks: LJNonProd.ipynb and/or LJProd.ipynb

# TTS

Change into the TTS folder.

Use

> docker build -t test2 .

to build the tts docker image with tagname: test2

Then move two directory back (so results files can be generated outside github repo)

Run

> docker run --rm -it -p 5002:5002 -p 8888:8888 --entrypoint /bin/bash -v .:/root/tts-output --gpus all test2

Run

> jupyter lab --ip='0.0.0.0' --allow-root

Use the link provided i.e. http://127.0.0.1:8888/[token] to see jupyter in your browser.

In the jupyter toolbar go into directory /tts-output/SethVoice/TTS and open TTS.ipynb