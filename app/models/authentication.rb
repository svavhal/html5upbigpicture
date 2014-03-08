# == Schema Information
#
# Table name: authentications
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string(255)
#  token      :string(255)
#  expires_at :datetime
#  created_at :datetime
#  updated_at :datetime
#

class Authentication < ActiveRecord::Base
end
