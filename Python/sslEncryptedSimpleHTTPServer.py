# create SSL cert
# openssl req -new -x509 -keyout cert.pem -out cert.pem -days 365 -nodes

# create httpserver.py

import BaseHTTPServer,SimpleHTTPServer,ssl

cert = "cert.pem"

httpd = BaseHTTPServer.HTTPServer(('192.168.1.10',443),SimpleHTTPServer.SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket(httpd.socket,certfile=cert,server_side=True)
httpd.serve_forever()