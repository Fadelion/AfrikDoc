require 'faker'

# Nettoyage des données existantes
puts "Nettoyage de la base de données..."
DoctorSpeciality.destroy_all
Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all
Speciality.destroy_all
City.destroy_all

# Création des villes
puts "Création des villes..."
cities = []
10.times do
  cities << City.create!(name: Faker::Address.city)
end

# Création des spécialités
puts "Création des spécialités..."
specialities = [
  "Cardiologie",
  "Dermatologie",
  "Gastro-entérologie",
  "Gynécologie",
  "Neurologie",
  "Ophtalmologie",
  "Pédiatrie",
  "Psychiatrie",
  "Radiologie",
  "Urologie"
].map { |name| Speciality.create!(name: name) }

# Création des docteurs
puts "Création des docteurs..."
20.times do
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city: cities.sample
  )
  
  # Attribution de 1 à 3 spécialités aléatoires à chaque docteur
  rand(1..3).times do
    DoctorSpeciality.create!(
      doctor: doctor,
      speciality: specialities.sample
    )
  end
end

# Création des patients
puts "Création des patients..."
50.times do
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: cities.sample
  )
end

# Création des rendez-vous
puts "Création des rendez-vous..."
100.times do
  doctor = Doctor.all.sample
  patient = Patient.all.sample
  city = [doctor.city, patient.city, cities.sample].sample
  
  Appointment.create!(
    doctor: doctor,
    patient: patient,
    city: city,
    date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 30)
  )
end

puts "Seed terminé avec succès!"
puts "#{City.count} villes créées"
puts "#{Speciality.count} spécialités créées"
puts "#{Doctor.count} docteurs créés"
puts "#{Patient.count} patients créés"
puts "#{Appointment.count} rendez-vous créés"
puts "#{DoctorSpeciality.count} associations docteur-spécialité créées"