from ast import Pass
import email
from wsgiref.validate import validator
from click import password_option
from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, EmailField, BooleanField, SubmitField
from wtforms.validators import DataRequired, EqualTo, InputRequired

class LoginForm(FlaskForm):
    email = EmailField('E-Mail адрес', validators=[DataRequired()])
    password = PasswordField('Пароль', validators=[DataRequired()])
    remember_me = BooleanField('Запомнить меня')
    submit = SubmitField('Вход')

class RegistrationForm(FlaskForm):
    email = EmailField('E-Mail адрес', validators=[DataRequired()])
    password = PasswordField('Пароль', validators=[InputRequired(), EqualTo('password2', message='Пароли должны совпадать')])
    password2 = PasswordField('Повторите пароль')
    submit = SubmitField('Зарегистрироваться')