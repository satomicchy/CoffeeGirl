class Contact
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def persisted?
    false
  end

  attr_accessor :letter, :email, :name    
end
