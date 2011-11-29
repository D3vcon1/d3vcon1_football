class Formation < ActiveRecord::Base
	class MaxPlayerValidator < ActiveModel::Validator
		def validate(record)
			record.errors[:base] << "You require 10 outfield players." unless (record.def + record.mid + record.fwd) == 10
		end
	end	

	validates :name, :length => { :maximum => 50 }
	validates_uniqueness_of :name, :case_sensitive => false, :message => "Name must be unique."
	validates_numericality_of :def, :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :def, :in => 0..10, :message => "Value must be between 0 and 10."
	validates_numericality_of :mid, :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :mid, :in => 0..10, :message => "Value must be between 0 and 10."
	validates_numericality_of :fwd, :only_integer => true, :message => "Value must be a whole number."
	validates_inclusion_of    :fwd, :in => 0..10, :message => "Value must be between 0 and 10."
	validates_with MaxPlayerValidator, :fields => [:def, :mid, :fwd]
end

