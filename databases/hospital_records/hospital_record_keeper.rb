# Require gems
require 'sqlite3'
require 'faker'

# Make hospital database file
db = SQLite3::Database.new("patient_info.db")
db.results_as_hash = true

# declare doctors table execution variable.
create_doctor_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS doctors(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number_of_patients int
  )
SQL

#declare

# declare patients table execution variable
create_patients_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS patients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    doctor_id INT,
    illness_id INT,
    FOREIGN KEY (doctor_id) REFERENCES  doctors(id),
    FOREIGN KEY (illness_id) REFERENCES  illness(id)
  )
SQL