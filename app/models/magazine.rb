require 'foobar'
class Magazine < ActiveRecord::Base
  attr_accessible :name, :organization
  include Foobar
end
