class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end

    def patient
        #belongs to a patient
       @patient
    end

    def doctor
        #belongs to a doctor
        @doctor
    end

end