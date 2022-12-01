class SendBirthdayEmailToAUserJob < ApplicationJob
  queue_as :mailers

  def perform(user_id)
    UserMailer.birthday(user_id).deliver_now
  end
end
