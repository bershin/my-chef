# frozen_string_literal: true
describe file('/etc/motd') do # rubocop:disable Layout/EmptyLineAfterMagicComment
  it { should be_file }
  its('content') { should match(/.+/)}
end
