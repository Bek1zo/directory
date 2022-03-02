from app import db

class User(db.Model):
    __tablename__ = 'Users'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(64), unique=True, nullable=False)
    username = db.Column(db.String(64), unique=True, nullable=False)
    password = db.Column(db.String(64), nullable=False)

    def __repr__(self):
        return('<User {}'.format(self.email))


class Post(db.Model):
    __tablename__ = 'Posts'
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(128), nullable=False)
    text = db.Column(db.Text, nullable=False)
    author = db.Column(db.Integer, db.ForeignKey('Users.id'))
    date = db.Column(db.DateTime, nullable=False)

class Geo_district(db.Model):
    __tablename__ = 'Geo_district'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String, nullable=False)

    def __repr__(self):
        return('Округ: {}'.format(self.name))

class Geo_region(db.Model):
    __tablename__ = 'Geo_region'
    id = db.Column(db.Integer, primary_key=True)
    district_id = db.Column(db.Integer, db.ForeignKey('Geo_district.id'))
    name = db.Column(db.String, nullable=False)

    def __repr__(self):
        return('Область: {}'.format(self.name))

class Geo_city(db.Model):
    __tablename__ = 'Geo_city'
    id = db.Column(db.Integer, primary_key=True)
    region_id = db.Column(db.Integer, db.ForeignKey('Geo_region.id'))
    name = db.Column(db.String, nullable=False)

    def __repr__(self):
        return('Город: {}'.format(self.name))