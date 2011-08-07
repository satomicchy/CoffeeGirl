class Contact
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::AttributeMethods
  include ActiveModel::Validations

  def persisted?
    false
  end

  def initialize(params={})
    params.each do |attr, value|
      send("#{attr}=", value)
    end
  end

  attr_accessor :letter, :email, :name
  define_attribute_methods [:letter, :email, :name]

  validates :name, :email, :letter, :presence => true

end
