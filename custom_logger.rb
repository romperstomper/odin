require 'logger'
require 'singleton'
class Clogger
  include Singleton
  @@logpath = ''

  def self.logpath= path
    @@logpath = path
  end

  def self.instance
    Logger.new(@@logpath)
  end
end

Clogger.logpath = '/tmp/moo'
l = Clogger.instance
l.info("#{__FILE__}") { 'sjflj' }

