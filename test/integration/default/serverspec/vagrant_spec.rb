require 'serverspec'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

# vagrantユーザについて
describe user("vagrant") do
  it { should exist } # vagrantユーザが存在する
  it { should belong_to_group "wheel" } # vagrantユーザはwheelに所属している
end
