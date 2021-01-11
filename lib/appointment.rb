
class Appointment
    attr_reader :date, :patient, :doctor
    
    @@appointments = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        save()
    end

    def save
        @@appointments << self
    end

    def self.all
        @@appointments
    end
end


# Appointment
#   .all
#     knows about all appointments that have been created
#   #new
#     initializes with a date, patient, and doctor
#   #patient
#     belongs to a patient
#   #doctor
#     belongs to a doctor