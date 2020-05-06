require "slack-notify"
require 'clockwork'

require 'active_support/time'
module Clockwork
    handler do |job|
        sample = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK'])
        sample.notify("3分に1回送られるよ")
    end
    every(3.minutes, 'less.frequent.job')
end

