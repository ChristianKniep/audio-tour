FROM qnib/static-museum-audio-guide

WORKDIR /home/jekyll/project
COPY ./assets ./assets
COPY ./_config.yml ./_config.yml
COPY ./_includes ./_includes
COPY ./audio ./audio
COPY ./stops ./stops
USER root
RUN chown -R jekyll .
