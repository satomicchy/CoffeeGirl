class Contact
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def persisted?
    false
  end

  attr_accessor :body, :email, :name    
end
