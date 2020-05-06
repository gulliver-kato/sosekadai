require "slack-notify"
require 'clockwork'

include Clockwork

handler do |job|
    puts "Running #{job}"
    sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
    sample.notify("3分に1回送られるよ")
end


# every(10.seconds, 'frequent.job')
every(3.minutes, 'less.frequent.job')
