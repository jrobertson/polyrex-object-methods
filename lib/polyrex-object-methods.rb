#!/usr/bin/ruby

# file: polyrex-object-methods.rb

class PolyrexObjectMethods
  
  def initialize(schema)
    
    a = schema.split('/')
    a.shift

    @a = a.map do |x|
      name, raw_fields = x.split('[')
      [name.capitalize, raw_fields ? raw_fields.chop.split(',').map(&:strip) : []]
    end
  end

  def to_a
    @a
  end
end
