class Patient
    attr_reader :name

    @@patients = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@patients << self
    end

    def self.all
        @@patients
    end

    def new_appointment(date, doctor)
        date = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors 
        appointments().map {|appointment| appointment.doctor}
    end
end


# Patient
#   #new
#     initializes with a name
#   #new_appointment
#     given a date and doctor, creates a new appointment belonging to that patient
#   .all
#     knows about all patients
#   #appointments
#     returns all appointments associated with this Patient
#   #doctors
#     has many doctors through appointments
