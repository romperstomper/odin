class Module
end

#class Myuser
#  #attr_reader :first_name, :last_name
#  def initialize(first, second)
#    @first_name = first
#    @last_name = second
#  end
#end

class UserPresenter
  attr_reader :first_name, :last_name
  def initialize(args)
    args.each do |k, v|
      instance_variable_set("@#{k}", v) unless v.nil?
    end
  end

  def full_name
    [@first_name, @last_name].join(" ")
  end
end

describe UserPresenter do
  it "presents users' full names" do
    person = {:first_name => "Bob", :last_name => "Smith"}
    expect(UserPresenter.new(person).full_name).to eq "Bob Smith"
  end
end

#p me.full_name
#p me.last_name
#p me.first_name
#user = UserPresenter.new(me)
#p user.full_name
