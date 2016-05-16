def hello_app(env, start_response):
    body = [
        '%s=%s' % (key, value) for key, value in env.items()
    ]
    body = '\n'.join(body)
    status = '200 OK'
    response_headers = [('Content-Type', 'text/plain'),
                        ('Content-Length', str(len(body)))
    ]

    start_response(status, response_headers)
    return [ body ]