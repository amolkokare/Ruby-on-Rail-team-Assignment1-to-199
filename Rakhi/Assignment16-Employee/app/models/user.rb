class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         after_create :send_email
  before_destroy :notify_manager_of_deletion

  def send_email
    puts "sending confirmation email now!"
    UserMailer.with(user: self).confirmation_email.deliver_now
  end

  def notify_manager
    puts "user being deleted!"
    UserMailer.with(user: self).notify_manager_of_deletion.deliver_now
  end

end
