require 'faker'

20.times do
  doctor = Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    specialty: Faker::Pokemon.move,
    postal_code: Faker::Number.number(5)
  )
end

40.times do
  patient = Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

60.times do
  appointment = Appointment.create(
    date: Faker::Date.forward(365).to_datetime,
    doctor_id: rand((Doctor.first.id)..(Doctor.last.id)),
    patient_id: rand((Patient.first.id)..(Patient.last.id))
  )
end
