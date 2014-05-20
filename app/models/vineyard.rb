class Vineyard < ActiveRecord::Base
  has_many :wines
  accepts_nested_attributes_for :wines, :reject_if => :all_blank

end
