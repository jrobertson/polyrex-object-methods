#!/usr/bin/env ruby

# file: polyrex-object-methods.rb

class PolyrexObjectMethods
  
  def initialize(schema)
    
    a = schema.split('/')
    a.shift

    to_array = ->(x) do
      name, raw_fields = x.split('[')
      [name.capitalize, raw_fields ? raw_fields.chop.split(',')\
                                                          .map(&:strip) : []]
    end

    @a = a.inject([]) do |r,x|

      siblings = x[/[^\{]+(?=\})/]

      if siblings then
        siblings.split(/\s*;\s*/).inject(r) {|r2, s| r2 << to_array.call(s)}
      else
        r << to_array.call(x)
      end
    end

  end

  def to_a
    @a
  end
end