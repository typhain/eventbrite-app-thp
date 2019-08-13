class Attendance < ApplicationRecord

  after_create :send_email

  belongs_to :user
  belongs_to :event

  def send_email
    AdminMailer.send_email(self).deliver_now
  end

end
