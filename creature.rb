class Creature
  # get a metaclass for this class
  def self.metaclass; class << self; self; end; end

  # advanced metaprogramming code for nice clean, traits
  def self.traits( *arr )
    return @traits if arr.empty?
    #1 sets up accessors for each var
    attr_accessor( *arr )

    #2 add a new class method to for each trait
    arr.each do |a|
      metaclass.instance_eval do
        define_method( a ) do |val|
          @traits || = {}
          @traits[a] = val
        end
      end
    end

    #3 For each monster, the initialize method
    # should use the default number for each trait
    #
    class_eval do
      define_method( :initialize ) do
        self.class.traits.each do |k,v|
          instance_variable_set("@#{k}", v)
        end
      end
    end
  end

  # creature attributes are read-only
  traits :life, :strength, :charisma, :weapon
end





