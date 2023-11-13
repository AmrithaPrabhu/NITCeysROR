#admin_id :string
#password :string
#name :string
class Admin < ApplicationRecord
    validates "admin_id", presence: true
end 
