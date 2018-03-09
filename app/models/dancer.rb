class Dancer < ApplicationRecord
    has_and_belongs_to_many :time_slots
    after_initialize :set_default_values
  
    def set_default_values
      # Only set if time_zone IS NOT set
      self.present ||= false
    end

    # remove capitalisation from names
    def fake_name=(_name)
        self.name = _name.downcase
    end
    def fake_name
        self.name
    end
end
