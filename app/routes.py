from turtle import title
from app import app, db
from flask import redirect, render_template
from app import models
from app.forms import LoginForm, RegistrationForm
from app.models import *


@app.route('/')
@app.route('/index')
def main():
    return(render_template('index.html', title='Главная'))

@app.route('/directory')
def directory():
    district = models.Geo_district.query.all()
    region = models.Geo_region.query.all()
    city = models.Geo_city.query.all()

    return(render_template('directory.html', title='Справочник', district=district, region=region, city=city))

@app.route('/info')
def info():
    return(render_template('info.html', title=('О нас')))

@app.route('/registration')
def registration():
    form = RegistrationForm()
    if form.validate_on_submit():
        return(redirect('/'))
    return(render_template('registration.html', title=('Регистрация'), form=form))

@app.route('/login')
def login():
    form = LoginForm()
    if form.validate_on_submit():
        return(redirect('/'))
    return(render_template('login.html', title=('Вход'), form=form))