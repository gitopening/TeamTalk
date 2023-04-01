#编译说明
10.2 解压编译pb
tar -zxvf protobuf-2.6.1.tar.gz
cd protobuf-2.6.1
./configure --prefix=/usr/local/protobuf
make -j 2 && make install
cd ..

11 下载TeamTalk代码
git clone https://github.com/mogujie/TeamTalk.git

12 生成pb文件
12.1 拷贝pb相关文件
拷贝pb的库、头文件到TeamTalk相关目录中:
mkdir -p /root/TeamTalk/server/src/base/pb/lib/linux/
cp /usr/local/protobuf/lib/libprotobuf-lite.a /root/TeamTalk/server/src/base/pb/lib/linux/
cp  -r /usr/local/protobuf/include/* /root/TeamTalk/server/src/base/pb/


mkdir -p /home/ggghub/TeamTalk/server/src/base/pb/lib/linux/
cp /usr/local/protobuf/lib/libprotobuf-lite.a /home/ggghub/TeamTalk/server/src/base/pb/lib/linux/
cp  -r /usr/local/protobuf/include/* /home/ggghub/TeamTalk/server/src/base/pb/

12.2 生成pb协议
cd /root/TeamTalk/pb

执行:

export PATH=$PATH:/usr/local/protobuf/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib
sh create.sh

生成协议相关源码文件。

再执行:
sh sync.sh

将相关文件拷贝到server 目录下。

[root@cbig teamtalklibs]# cd ../TeamTalk/p
-bash: cd: ../TeamTalk/p: No such file or directory
[root@cbig teamtalklibs]# cd ../TeamTalk/pb/
[root@cbig pb]# sh create.sh
create.sh: line 7: protoc: command not found
create.sh: line 11: protoc: command not found
create.sh: line 15: protoc: command not found
[root@cbig pb]# mkdir -p /home/ggghub/TeamTalk/server/src/base/pb/lib/linux/
[root@cbig pb]# cp /usr/local/protobuf/lib/libprotobuf-lite.a /home/ggghub/TeamTalk/server/src/base/pb/lib/linux/
[root@cbig pb]# cp  -r /usr/local/protobuf/include/* /home/ggghub/TeamTalk/server/src/base/pb/
[root@cbig pb]# export PATH=$PATH:/usr/local/protobuf/bin
[root@cbig pb]# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib
[root@cbig pb]# sh create.sh
[root@cbig pb]# sh sync.sh
[root@cbig pb]# git status
On branch master
Your branch is up-to-date with 'origin/master'.


Untracked files:
  (use "git add <file>..." to include in what will be committed)

        ../server/src/base/pb/google/
        ../server/src/base/pb/lib/

no changes added to commit (use "git add" and/or "git commit -a")
[root@cbig pb]#
执行命令完了之后 发生的变化

正常运行的 编译后的服务器配置文件 只需要修改这两个  loginserver_ok.conf msgserver_ok.conf
开放 HttpPort=18080 这个端口和 msgserver_ok.conf总的ListenPort=18000 端口
ClientListenIP=0.0.0.0		# can use multiple ip, seperate by ';'
ClientPort=18008
HttpListenIP=0.0.0.0
HttpPort=18080
MsgServerListenIP=0.0.0.0 	# can use multiple ip, seperate by ';'
MsgServerPort=18100

msfs=http://192.168.0.37:18700/

discovery=http://192.168.0.37/api/discovery


msgserver_ok.conf

ListenIP=0.0.0.0
ListenPort=18000

ConcurrentDBConnCnt=1
DBServerIP1=127.0.0.1
DBServerPort1=10600
#2023-03-07 23:54:49,071 [INFO  IM] - <msg_server.cpp>|<49>|<main>,MsgServer max files can open: 1024
#2023-03-07 23:54:49,071 [INFO  IM] - <msg_server.cpp>|<87>|<main>,DBServerIP need 2 instance at lest
#msg_server这个服务起不来 怀疑这套代码有人修改过，必须要两个服务器
DBServerIP2=127.0.0.1
DBServerPort2=10600

LoginServerIP1=localhost
LoginServerPort1=18100
#LoginServerIP2=localhost
#LoginServerPort2=18101

RouteServerIP1=localhost
RouteServerPort1=18200
#RouteServerIP2=localhost
#RouteServerPort2=18201

PushServerIP1=localhost
PushServerPort1=18500

FileServerIP1=localhost
FileServerPort1=18600
#FileServerIP2=localhost
#FileServerPort2=18601

IpAddr1=192.168.0.37	#电信IP
IpAddr2=192.168.0.37	#网通IP
MaxConnCnt=100000

# AES key
aesKey=12345678901234567890123456789012
