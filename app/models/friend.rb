class Friend
  include Gmaps4rails::ActsAsGmappable
  include Mongoid::Document

  acts_as_gmappable :position => :address

  field :address, :type => Array
  field :gmaps

  def gmaps4rails_address 
    address
  end
end
