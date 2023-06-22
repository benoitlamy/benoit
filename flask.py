from flask import Flask, render_template
import mysql.connector

app = Flask(__name__)

# Configuration de la connexion à la base de données
db = mysql.connector.connect(
    host='localhost',       # L'adresse IP ou le nom d'hôte du conteneur MySQL
    port='3306',            # Le port d'exposition du conteneur MySQL
    user='your_username',   # Le nom d'utilisateur MySQL
    password='your_password', # Le mot de passe MySQL
    database='your_database_name'  # Le nom de la base de données MySQL
)

# Route pour afficher la liste des réunions
@app.route('/meetings')
def meetings():
    cursor = db.cursor()
    cursor.execute('SELECT * FROM meetings')
    meetings = cursor.fetchall()
    return render_template('meetings.html', meetings=meetings)

if __name__ == '__main__':
    app.run()
