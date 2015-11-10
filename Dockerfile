FROM ubuntu
RUN apt-get update
RUN apt-get install -y build-essential
RUN mkdir /src
ADD src /src/
WORKDIR /src
RUN ls -al / 
RUN make hello
CMD /src/hello
