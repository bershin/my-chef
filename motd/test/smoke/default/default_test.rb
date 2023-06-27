# frozen_string_literal: true
describe file('/etc/motd') do # rubocop:disable Layout/EmptyLineAfterMagicComment
  it { should be_file }
  its('content') { should match(/.+/)}
end

describe file('/etc/profile.d/motd.sh') do # rubocop:disable Layout/EmptyLineAfterMagicComment
  it { should be_file }
end

describe command("bash --login -i -c 'cd ~'") do
  its('stdout') { should match('SIMULATED CHEF NODE') }
end