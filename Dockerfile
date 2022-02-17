FROM golang:1.17-bullseye
ARG REPO_URL
# RUN apt-get update && apt-get install git
WORKDIR /app
RUN git clone $REPO_URL
WORKDIR /app/terraform-provider-nutanix
COPY build.sh .
ENTRYPOINT ["./build.sh"]
