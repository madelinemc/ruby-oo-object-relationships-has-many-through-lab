class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        #returns all appointments associated with this Doctor instance
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self
        end
    end

    def new_appointment(patient, date)
        #instantiates a new appointment given a date and a patient
        Appointment.new(date, patient, self)
    end

    def patients
        #has many patients through appointments
        appointments.map do |appointment_instance|
            appointment_instance.patient
        end
    end

end