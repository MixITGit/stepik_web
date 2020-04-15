def app(environ, start_response):
    """Simplest possible application object"""
    #data = b'Hello, World!\n'
    data = ("\n".join(environ.get("QUERY_STRING").split("&"))).encode()
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(data)))
    ]
    #print(environ)
    start_response(status, response_headers)
    return [data]
