import psycopg2
conn = psycopg2.connect(database="netology_db", user="postgres", password="Astrah-20047")
with conn.cursor() as cur:
  cur.execute("CREATE TABLE test(id SERIAL PRIMARY KEY);")
  conn.commit()
conn.close()