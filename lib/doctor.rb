class Doctor
    attr_reader :name

    @@doctors = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@doctors << self
    end

    def self.all
        @@doctors
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        appointments().map {|appointment| appointment.patient}
    end

    def new_appointment(date, patient)
        date = Appointment.new(date, patient, self)
    end
end