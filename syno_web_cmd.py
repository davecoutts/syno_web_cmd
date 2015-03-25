from bottle import route, run
from sh import syno_poweroff_feasible_check

@route('/')
def home():
    return "syno_web_cmd is running. Power off the Synology with 'wget http://SYNOLOGY_IP_ADDRESS:8080/poweroff'"

@route('/poweroff')
def _poweroff():
    try:
        syno_poweroff_feasible_check()
    except:
        pass
    return

run(host='0.0.0.0', port=8080, quiet=True)
