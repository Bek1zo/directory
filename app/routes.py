from datetime import datetime
from turtle import title
from app import app, db
from flask import redirect, render_template, flash
from flask_login import current_user, login_user, logout_user
from app import models
from app.forms import AddArticleForm, AddArticleForm, LoginForm, RegistrationForm
from app.models import *
from sqlalchemy import desc

@app.route('/')
@app.route('/index')
def main():
    posts = models.Post.query.order_by(Post.date.desc()).all()
    return(render_template('index.html', title='Главная', posts=posts))

@app.route('/add_article', methods=['GET', 'POST'])
def add_article():
    if current_user.status != 'Администратор':
        return(redirect('/index'))
    else:
        form = AddArticleForm()
        if form.validate_on_submit():
            article = Post(title=form.title.data, text=form.text.data, date=datetime.now(), user_id=current_user.id)
            db.session.add(article)
            db.session.commit()
            return(redirect('/index'))

        return(render_template('add_article.html', title='Добавить новость', form=form))

@app.route('/directory')
def directory():
    district = models.Geo_district.query.all()
    region = models.Geo_region.query.all()
    city = models.Geo_city.query.all()

    return(render_template('directory.html', title='Справочник', district=district, region=region, city=city))

@app.route('/info')
def info():
    return(render_template('info.html', title=('О нас')))

@app.route('/registration', methods=['GET','POST'])
def registration():
    if current_user.is_authenticated:
        redirect('/index')
    form = RegistrationForm()
    if form.validate_on_submit():
        user = User(username=form.username.data, email=form.email.data, password=form.password.data)
        db.session.add(user)
        db.session.commit()
        flash('Вы успешно зарегистрировались, теперь можете войти в систему')
        return(redirect('/login'))

    return(render_template('registration.html', title=('Регистрация'), form=form))

@app.route('/login', methods=['GET','POST'])
def login():
    if current_user.is_authenticated:
        redirect('/index')
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(email=form.email.data).first()
        if user is None or not user.check_password(form.password.data):
            flash('Неправильный логин или пароль')
            return(redirect('/login'))
        else:
            login_user(user, remember=form.remember_me.data)
            return(redirect('/directory'))
    return(render_template('login.html', title=('Вход'), form=form))


@app.route('/logout')
def logout():
    logout_user()
    return redirect('/index')