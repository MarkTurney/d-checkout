FROM node:20

#COPY action /action

RUN git clone https://code.forgejo.org/actions/checkout.git /action/

RUN ls -all /action/dist

RUN echo "#!/bin/bash" > /entrypoint.sh \
    && echo "echo 'hello there'" >> /entrypoint.sh \
    && echo "ls -all /action/dist" >> /entrypoint.sh \
    && echo "whereis node" >> /entrypoint.sh \
    && chmod +x /entrypoint.sh


#     && echo "node /action/dist/index.js" >> /entrypoint.sh \
