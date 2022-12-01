class SendBirthdayEmailToAllUsersJob < ApplicationJob
  queue_as :mailers

  def perform
    User.all.select(:id).each do |user|
      SendBirthdayEmailToAUserJob.perform_later(user.id)
    end
  end
end
