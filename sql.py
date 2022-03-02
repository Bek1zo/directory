import sqlite3
import codecs

conn = sqlite3.connect('app.db')

print('Creating schema...')

file = codecs.open('info.sql', 'r', 'utf-8')

schema = file.read()
conn.executescript(schema)
print("Done")
file.close()

conn.close()