from http.server import BaseHTTPRequestHandler, HTTPServer

class SimpleServer(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html; charset=utf-8')
        self.end_headers()
        message = "<h1>Merhaba Kubernetes - Versiyon 2!</h1>"
        self.wfile.write(message.encode('utf-8'))

def run():
    print('Sunucu baslatiliyor...')
    server_address = ('0.0.0.0', 8080)
    httpd = HTTPServer(server_address, SimpleServer)
    print('Sunucu calisiyor...')
    httpd.serve_forever()

run()
