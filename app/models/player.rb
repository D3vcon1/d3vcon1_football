class Player < ActiveRecord::Base
	validates :name, :length => { :maximum => 50 }
	validates_uniqueness_of :name, :case_sensitive => false, :message => "Name must be unique."
	validates_numericality_of :goalkeeping, :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :goalkeeping, :in => 0..100, :message => "Value must be between 0 and 100."
	validates_numericality_of :passing,     :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :passing,     :in => 0..100, :message => "Value must be between 0 and 100."
	validates_numericality_of :defense,     :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :defense,     :in => 0..100, :message => "Value must be between 0 and 100."
	validates_numericality_of :goalscoring, :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :goalscoring, :in => 0..100, :message => "Value must be between 0 and 100."
end
