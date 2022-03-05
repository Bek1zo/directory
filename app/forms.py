from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, EmailField, BooleanField, SubmitField, TextAreaField
from wtforms.validators import DataRequired, EqualTo, InputRequired, ValidationError
from app.models import User

class AddArticleForm(FlaskForm):
    title = StringField('Название:', validators=[DataRequired()])
    text = TextAreaField('Текст:', validators=[DataRequired()])
    submit = SubmitField('Добавить новость')

class LoginForm(FlaskForm):
    email = EmailField('E-Mail адрес', validators=[DataRequired()])
    password = PasswordField('Пароль', validators=[DataRequired()])
    remember_me = BooleanField('Запомнить меня')
    submit = SubmitField('Вход')

class RegistrationForm(FlaskForm):
    email = EmailField('E-Mail адрес', validators=[DataRequired()])
    username = StringField('Имя пользователя', validators=[DataRequired()])
    password = PasswordField('Пароль', validators=[InputRequired(), EqualTo('password2', message='Пароли должны совпадать')])
    password2 = PasswordField('Повторите пароль')
    submit = SubmitField('Зарегистрироваться')

    def validate_username(self, username):
        user = User.query.filter_by(username=username.data).first()
        if user is not None:
            raise ValidationError('Используйте другое имя')


    def validate_email(self, email):
        email = User.query.filter_by(email=email.data).first()
        if email is not None:
            raise ValidationError('Используйте другой e-mail')

