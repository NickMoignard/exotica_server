class TimeSlot < ApplicationRecord
    POLE_IDS = { "upstairs_main" => 0, "upstairs_secondary" => 1, "downstairs_one" => 2, "downstairs_two" => 3, "downstairs_booth" => 4, "downstairs_bar" => 5 }
    $dancer_strings = ["", "", "", "", "", ""]
    has_and_belongs_to_many :dancers


 
    # SETTER & GETTERS
    def upstairs_main=(_name)
        $dancer_strings[0] = _name
        add_dancers
    end
    def upstairs_main
        $dancer_strings[0]
    end
    def upstairs_secondary=(_name)
        $dancer_strings[1] = _name
        add_dancers
    end
    def upstairs_secondary
        $dancer_strings[1]
    end
    def downstairs_one=(_name)
        $dancer_strings[2] = _name
        add_dancers
    end
    def downstairs_one
        $dancer_strings[2]
    end    
    def downstairs_two=(_name)
        $dancer_strings[3] = _name
        add_dancers
    end
    def downstairs_two
        $dancer_strings[3]
    end
    def downstairs_booth=(_name)
        $dancer_strings[4] = _name
        add_dancers
    end
    def downstairs_booth
        $dancer_strings[4]
    end
    def downstairs_bar=(_name)
        $dancer_strings[5] = _name
        add_dancers
    end
    def downstairs_bar
        $dancer_strings[5]
    end


    private
        def add_dancers
            #clear the dancers then reinsert each dancer in order
            self.dancers = []
            $dancer_strings.each do |str|
                self.dancers << Dancer.create(fake_name: str)
            end
        end
end
