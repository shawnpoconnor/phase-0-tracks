# Require gems
require 'sqlite3'
require 'faker'

# Make hospital database file
db = SQLite3::Database.new("patient_doctor_info.db")
db.results_as_hash = true

# declare doctors table execution variable.
create_doctor_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS doctors(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    number_of_patients INT
  )
SQL

#declare

# declare patients table execution variable
create_patients_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS patients(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    doctor_id INT,
    illness VARCHAR(255),
    FOREIGN KEY (doctor_id) REFERENCES  doctors(id)
  )
SQL

# create a patients table (if it's not there already)
db.execute(create_patients_table_cmd)

# create a doctor table (if it's not there already)
db.execute(create_doctor_table_cmd)

def add_patient(db, name, illness)
  db.execute("INSERT INTO patients (name, illness) VALUES (?, ?)", [name, illness])
end

def add_doctor(db, name)
  db.execute("INSERT INTO doctors (name, number_of_patients) VALUES (?, 0)", [name])
end

def assign_doctor(db, patient, doctor_number)
  db.execute("UPDATE patients SET doctor_id =#{doctor_number} WHERE name=#{patient}")
end

def generate_random_patients(db, number_of_patients)
illness = ["Flu", "Cold", "Ricktts", "TB", "Inflamation", "Fracture", "Cut", "Sprain"]
  number_of_patients.times do
    add_patient(db, Faker::Name.name, illness.sample)
  end
end

def show_unassigned_patients(db)
  patients = db.execute("SELECT * FROM patients")
   puts "UNASSIGNED PATIENTS:"
  patients.each do |patient|
    if patient["doctor_id"] = "nil"
      puts "#{patient['name']} "
    end
  end
end

def list_doctors(db)
  doctors = db.execute("SELECT * FROM patients")
  puts "#ID and DOCTOR"
  doctors.each do |doctor|
    puts"#{doctor['id']}  #{doctor['name']}"
  end
end

def admistrator_interface(db)
  puts "Would you like to Assign Doctors or Update Doctors?"("a/u")
  user_input = gets.chomp
  if user_input == "a"
    show_unassigned_patients(db)
  elsif user_input == "u"
    puts "What is the new doctor's name?"
    new_doctor = gets.chomp
    add_doctor(db, new_doctor)
  end
end

puts "Log in as patient or admistrator?"
  if user_input == "patient"
    puts "new or existing user?(n/e)"
      user_input = gets.chomp
      if user_input == "n"
        puts "Welcome!"
      else
        puts "What is your name?"
        user_name = gets.chomp
        puts "What is your illness?"
        user_illness = gets.chomp
        add_patient(db, user_name, user_illness)
      end
  elsif user_input == "admistrator"
    puts "Please enter password:"
    password = "password"
    user_input = gets.chomp
    if user_input == password
      admistrator_interface(db)
    else
      puts "nope!"
    end
  end