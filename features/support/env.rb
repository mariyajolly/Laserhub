# frozen_string_literal: true

require 'watir'
require 'logger'

Before do
  @logger = Logger.new($stdout)
  @browser = Watir::Browser.new :chrome
  @browser.window.maximize
end

After do
  @browser.close
end
