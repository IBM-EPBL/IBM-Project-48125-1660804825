from flask import Flask, render_template
from sqlalchemy import create_engine
from sqlalchemy.orm import scoped_session, sessionmaker
from flask_sqlalchemy import SQLAlchemy
import pymysql

engine = create_engine("mysql+pymysql://root@localhost/donor")

db = scoped_session(sessionmaker(bind = engine))
buffersize = 64 * 1024
app=Flask(__name__)
@app.route('/Registration')
def Registration():
    return render_template("Registration.html")

@app.route('/login')
def login():
    return render_template("login.html")
@app.route('/status')
def status():
    return render_template("status.html")
def sucess():
    return render_template("sucess")

def homepage():
    return render_template("homepage")
def image():
    return render_template("image/plasma.jpg")

class reg(db.Model):
    id = db.Column(db.Integer, primary_key = True)
    Donarname = db.Column(db.String(100))
    Patronname = db.Column(db.String(100))
    Location = db.Column(db.String(100))
    BloodGroup = db.Column(db.String(100))
    phone = db.Column(db.String(100))
    Organs = db.Column(db.String(100))
    uname = db.Column(db.String(100))
    password = db.Column(db.String(100))
  
    def __init__(self, Donarname, Patronname, Location, BloodGroup, phone, Organs, uname, password):
        self.cloudname = Donarname
        self.cloudownername = Patronname
        self.accesskey = Location
        self.port = BloodGroup
        self.phone = phone
        self.email = Organs
        self.uname = uname
        self.password = password

if __name__=="__main__":
    app.run(debug=True)
