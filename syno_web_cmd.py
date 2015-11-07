from bottle import route, run, template
from sh import syno_poweroff_feasible_check, df, cat

TEXTPAGE = """
<html>
<head>
<title>Synology {{title}}</title>
</head>
<body>
<pre style="font-family:monospace;">
{{text}}
</pre>
<a href="/">Home</a>
</body>
</html>"""

HOME = """
<html>
<head>
<title>Synology Home</title>
</head>
<body style="font-family:monospace;">
<a href="poweroff">Power off the Synology</a><br/>
<a href="df">Show Synology disk space with DF</a><br/>
<a href="version">Show running Synology software version</a><br/>
</body>
</html>"""

@route('/')
def home():
    return HOME

@route('/poweroff')
def _poweroff():
    try:
        syno_poweroff_feasible_check()
    except:
        pass
    return

@route('/df')
def _df():
    return template(TEXTPAGE, title='DF', text=df('-h'))

@route('/version')
def _version():
    return template(TEXTPAGE, title='Version', text=cat('/etc.defaults/VERSION'))

run(host='0.0.0.0', port=8080, quiet=True)
