require 'logger'
require 'singleton'
class Clogger
  include Singleton
  @@logpath = '/dev/null'
  def self.logpath= path
    @@logpath = path
  end

  @@instance ||= Logger.new(@@logpath)
  def self.instance
    return @@instance 
  end
end
