class Motel < ActiveRecord::Base
  belongs_to :type
  belongs_to :city
end
