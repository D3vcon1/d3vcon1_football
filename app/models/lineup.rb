class Lineup < ActiveRecord::Base
	validates_uniqueness_of :name, :case_sensitive => false, :message => "Name must be unique."

	has_one :formation
	validates_presence_of :formation, :message => "You must refer to a valid formation."

	has_many :players, :through => "lineup_players", :source => :player	
end
