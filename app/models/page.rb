class Page < ActiveRecord::Base
  attr_accessible :parent_id, :plug, :text, :title, :main, :weight

  scope :top, where(:parent_id => nil)
end
