FROM node:20

#COPY action /action

RUN git clone https://code.forgejo.org/actions/checkout.git /action/

RUN ls -all /action/dist
