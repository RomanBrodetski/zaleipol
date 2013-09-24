class Page < ActiveRecord::Base
  attr_accessible :parent_id, :plug, :text, :title, :main, :weight, :hidden, :parent

  has_many :child_pages, :class_name => "Page",
    :foreign_key => "parent_id"
  belongs_to :parent, :class_name => "Page"

  scope :top, where(:parent_id => nil, :main => false)
  default_scope order("weight DESC")


  def top_parent
    parent.top_parent rescue self
  end
end
