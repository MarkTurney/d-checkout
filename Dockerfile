FROM node:20

#COPY action /action

# RUN git clone https://code.forgejo.org/actions/checkout.git /action/
RUN git clone https://code.forgejo.org/actions/checkout.git /

RUN ls -all /dist

RUN echo "#!/bin/bash" > /entrypoint.sh \
    && echo "echo 'hello there'" >> /entrypoint.sh \
    && echo "ls -all /dist" >> /entrypoint.sh \
    && echo "node /dist/index.js" >> /entrypoint.sh \
    && chmod +x /entrypoint.sh


#     && echo "whereis node" >> /entrypoint.sh \
