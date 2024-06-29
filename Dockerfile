FROM node:20

COPY action /action

# COPY action /

# RUN git clone https://code.forgejo.org/actions/checkout.git /action/
# RUN git clone https://code.forgejo.org/actions/checkout.git /

# RUN ls -all /action/dist

# RUN echo "#!/bin/bash" > /entrypoint.sh \
#     && echo "set -ex" >> /entrypoint.sh \
#     && echo "ls -all /action/dist" >> /entrypoint.sh \
#     && echo "cat /action/dist/problem-matcher.json" >> /entrypoint.sh \
#     && echo "node /action/dist/index.js" >> /entrypoint.sh \
#     && chmod +x /entrypoint.sh


#     && echo "whereis node" >> /entrypoint.sh \


#     && echo "echo 'hello there'" >> /entrypoint.sh \
#     && echo "sleep 10" >> /entrypoint.sh \
