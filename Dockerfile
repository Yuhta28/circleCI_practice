FROM cimg/node:lts
RUN sudo apt-get update && sudo apt-get install -y python \
    && cd ~/ \
    && curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip" \
    && unzip awscli-bundle.zip \
    && sudo ~/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws \
    && rm -rf awscli-bundle awscli-bundle.zip

CMD ["/bin/sh"]