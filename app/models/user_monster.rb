class UserMonster < ApplicationRecord
    belongs_to :user 
    belongs_to :monster  
   
    def create_base_stats
        if self.monster.monster_theme == "Cute"
            self.happiness = 85
            self.power = 25
            self.hunger_level = 50
        elsif self.monster.monster_theme == "Scary"
            self.happiness = 15
            self.power = 75
            self.hunger_level = 50
        elsif self.monster.monster_theme == "Cool"
            self.happiness = 65
            self.power = 45
            self.hunger_level = 50
        end
    end


    def fix_stats
        # below, i'm just making a basic array of the attributes with numerical values that we want to check/update. I could have done self.attributes, and cycled thru
        #that, but it also includes id, created_at, etc. the effort it would have taken to removes those out and only get the stuff we want or the effort it would take
        #to write multiple if statements, wasn't worth it in my opinion.

        current_monster_stat_names = ["happiness","power","hunger_level"]


        #here i'm going thru the array above, and i'm basically "sending" the attribute to the instance. i'm seeing the number and see if it is over 100 or less than 0.
        #i'm then just setting the value to the max we wanted it to do

        current_monster_stat_names.each do |stat|
            if self.send(stat) >= 100
                self[stat] = 100
            end
            if self.send(stat) <=0
                self[stat] = 0
            end

    
        end
            self.update({happiness: self.happiness, power: self.power, hunger_level: self.hunger_level})


    end


end
