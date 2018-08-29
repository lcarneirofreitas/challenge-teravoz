from flask import Flask, request
from flask import Response
import json
import mysql.connector

## mysql connect
#mydb = mysql.connector.connect(
#  host="mysql",
#  user="root",
#  passwd="root",
#  database="events",
#  auth_plugin='mysql_native_password'
#)
#
#mycursor = mydb.cursor()

# flask app
app = Flask(__name__)

@app.route('/',methods=['POST'])
def foo():

    data = request.get_json(force=True);

#    sql = "INSERT INTO events (call_id, code, type, direction, our_number, their_number, timestamp) VALUES (%s, %s, %s, %s, %s, %s, %s)"

#    val = (data['call_id'], data['code'], data['type'], data['direction'], data['our_number'], data['their_number'], data['timestamp'])

#    mycursor.execute(sql, val)
#    mydb.commit()

    print(data)

    return Response("{ OK }", status=200, mimetype='application/json')

if __name__ == '__main__':
   app.run(host='0.0.0.0')



