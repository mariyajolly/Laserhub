# frozen_string_literal: true

Given(/^Login to Laserhub's web application$/) do
  @browser.goto('https://app.laserhub.com/login')
  @browser.button(id: 'onetrust-accept-btn-handler').click
  @browser.refresh
end

When(/^Enter the credentials (.*),(.*)$/) do |username, password|
  @browser.text_field(id: 'email').wait_until(timeout: 60).send_keys username
  @browser.text_field(id: 'password').wait_until(timeout: 60).send_keys password
  @browser.button(type: 'submit').wait_until(timeout: 60).click
end

Then(/^User login (.*)$/) do |status|
  @browser.a(href: /logout/).wait_until(timeout: 5, &:present?)
  @logger.info 'User has successfully logged in to Laserhub web application'
  @browser.a(href: /logout/).click
  raise 'User login is successful with invalid credentials' if status == 'failure'
rescue  StandardError => e
  puts e
  raise 'User login is not successful with valid credentials' if status == 'success'

  alert_present = @browser.div(role: 'alert').present?
  @logger.info 'Login form is incomplete' unless alert_present
  alert_text = @browser.div(role: 'alert').text if alert_present
  @logger.info "User login has failed with the alert : #{alert_text}" if alert_present
end
