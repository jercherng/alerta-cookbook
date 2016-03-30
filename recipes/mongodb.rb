apt_repository "mongodb-10gen" do
  uri "http://repo.mongodb.org/apt/ubuntu"
  distribution "#{node['lsb']['codename']}/mongodb-org/3.2"
  components ["multiverse"]
  keyserver "keyserver.ubuntu.com"
  key "EA312927"
end

package 'mongodb-org'
