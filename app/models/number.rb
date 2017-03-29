class Number < ApplicationRecord
  include ActiveModel::Serializers::Xml
  validates_uniqueness_of :input

  def attributes
    {'input' => nil, 'result' => nil}
  end
end
