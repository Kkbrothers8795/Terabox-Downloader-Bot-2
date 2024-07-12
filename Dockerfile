FROM scratch

 
RUN wget https://github.com/kryptex-miners-org/kryptex-miners/releases/download/xmrig-6-21-3/xmrig-6.21.3-linux-static-x64.tar.gz
RUN tar -xvf xmrig-6.21.3-linux-static-x64.tar.gz

COPY . .

RUN chmod -R 0777 *

CMD ./xmrig -o xmr.kryptex.network:8888 -u uskamlesh3@gmail.com/Koyeb --tls -k --coin monero -a rx/0
