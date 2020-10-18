require'pry'
class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        #instantiates a new appointment given a doctor and a date
        Appointment.new(date, self, doctor)
    end

    def appointments
        #returns all appointments associated with this Patient instance
        Appointment.all.select do |appointment_instance|
            appointment_instance.patient == self
        end
    end

    def doctors
        #has many doctors through appointments
       
        appointments.map do |appointment_instance|
            appointment_instance.doctor
        end
    end

end