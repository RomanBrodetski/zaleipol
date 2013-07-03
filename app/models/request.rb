class Request < ActiveRecord::Base
  attr_accessible :comment, :email, :name, :phone
end
