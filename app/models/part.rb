class Part < ActiveRecord::Base
  attr_accessible :assembly_id, :name
  has_and_belongs_to_many :assemblies
end
