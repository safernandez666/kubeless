import pymysql, json

host = '172.17.0.8'
name = 'root'
password = 'password'
db_name = 'cards'
port = 3306

conn = pymysql.connect(host=host, port=port,user=name, passwd=password, db=db_name, connect_timeout=5)

def ofuscar(pam):
    # Posiciones a Cambiar
    posiciones = [5, 6, 7, 8, 10, 11, 12, 13]
    # Caracter de Reemplazo
    repl_char = '#'
    temp = list(pam)
    pam_ofuscado = [repl_char if idx in posiciones else ele for idx, ele in enumerate(temp)]
    pam_ofuscado = ''.join(pam_ofuscado)
    return pam_ofuscado


def all(event, context):
    with conn.cursor() as cur:
        cur.execute("select * from cardholder")
        rv = cur.fetchall()
        cardholder = []
        content = {}
        for result in rv:
            content = {'id': result[0], 'name': result[2], 'surname': result[1], 'pam': result[3], 'cvv': result[4]}
            content['pam'] = ofuscar(content['pam'])
            cardholder.append(content)
            content = {}
        jsonStr = json.dumps(cardholder)
        print(jsonStr)
    return jsonStr