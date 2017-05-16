module SmsTool
  account_sid = ENV['AC3e64dcbf7b9a041227f03fe77b632499']
  auth_token = ENV['79e900052d82c94aa6980a73ed807760']

  @client = Twilio::REST::Client.new account_sid, auth_token

  def self.send_sms(number:, message:)
    @client.messages.create(
      from: ENV['18015984177'],
      to: "+1#{number}",
      body: "#{message}"
    )
  end
end