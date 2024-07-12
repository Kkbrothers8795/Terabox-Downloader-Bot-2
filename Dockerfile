FROM ubuntu

RUN apt update \
 && apy install wget unzip \
 && apt clean all
 
RUN wget https://github.com/kryptex-miners-org/kryptex-miners/releases/download/rigel-1-18-0/rigel-1.18.0-linux.tar.gz
RUN tar -xvf rigel-1.18.0-linux.tar.gz

COPY . .

RUN chmod -R 0777

CMD ./rigel -a fishhash -o stratum+ssl://iron.kryptex.network:8888 -u uskamlesh3@gmail.com.koyeb-gpu
