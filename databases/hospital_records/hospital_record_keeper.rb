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
  # set variable to add one to to represent additon of new patient
  number_to_update = db.execute("SELECT number_of_patients FROM doctors WHERE doctors.id = '#{doctor_number}'")
  # change patient's doctor_id to new doctor's id #
  db.execute("UPDATE patients SET doctor_id= #{doctor_number} WHERE patients.name= '#{patient}'")
  # add one to doctor's number_of_patients
  db.execute("UPDATE doctors SET number_of_patients =#{number_to_update[0][0] + 1} WHERE doctors.id= #{doctor_number}")
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

def list_doctor_with_patient(db, doctor_to_see)
  doc_pat_list = db.execute("SELECT patients.name, doctors.name
  FROM patients
    JOIN doctors
      ON patients.doctor_id = doctors.id")
  doc_pat_list.each do |patient_info|
  puts "Patient: #{patient_info['name']}    Doctor: #{patient_info[0]}"
  end
end

def admistrator_interface(db)
  puts "Would you like to Assign Doctors, Update Doctors, View Patient/doctor pairs?(a/u/v)"
  user_input = gets.chomp
  if user_input == "a"
    list_doctors(db)
    show_unassigned_patients(db)
    puts "Doctor #ID?"
    doctor = gets.chomp
    puts "Patient?"
    patient = gets.chomp
    assign_doctor(db, patient, doctor)
    list_doctor_with_patient(db, doctor)

  elsif user_input == "u"
    puts "What is the new doctor's name?"
    new_doctor = gets.chomp
    add_doctor(db, new_doctor)
  end
end

puts "Log in as patient or admistrator?(p/a)"
user_input = gets.chomp
  if user_input == "p"
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
  elsif user_input == "a"
    puts "Please enter password:"
    password = "password"
    user_input = gets.chomp
    if user_input == password
      admistrator_interface(db)
    else
      puts "nope!"
    end
  end
# assign_doctor(db, 'Henderson Russel', 2)
  # db.execute("UPDATE doctors SET number_of_patients =1 WHERE doctors.id= 2")