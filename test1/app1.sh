from flask import Flask, render_template, request
from flask_mysqldb import MySQL

app = Flask(_name_)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'foo'
app.config['MYSQL_DB'] = 'flask'

mysql = MySQL(app)

@app.route('/')
def home():
	return ("hello")

@app.route('/test')
def test():
	return ("test")
@app.route('/login', methods = ['POST', 'GET'])
def login():
	if request.method == 'GET':
	return "Login via the login Form"
if request.method == 'POST':
	name = request.form['name']
	age = request.form['age']
	cursor = mysql.connection.cursor()
	cursor.execute(''' INSERT INTO info_table VALUES (%s,%s)''',(name,age))
	mysql.connection.commit()
	cursor.close()(
	return f"Done!!"
