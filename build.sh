#!/bin/bash


docker run -ti --rm -p 4000:4000 \
           -v $(pwd)/assets:/home/jekyll/project/assets \
           -v $(pwd)/_config.yml:/home/jekyll/project/_config.yml \
           -v $(pwd)/_includes:/home/jekyll/project/_includes \
           -v $(pwd)/_layouts:/home/jekyll/project/_layouts \
           -v $(pwd)/stops:/home/jekyll/project/stops \
           -v $(pwd)/audio:/home/jekyll/project/audio \
           -v $(pwd)/_site:/home/jekyll/project/_site \
           qnib/static-museum-audio-guide:latest \
           bundle exec jekyll build
set -x
rm -f _site/entrypoint.sh \
      _site/Dockerfile \
      _site/jekyll.dockerapp
