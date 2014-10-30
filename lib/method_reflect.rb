require 'method_source'
require 'yard'

module MethodReflect
  module MethodExtensions

    def commented_source
      if @commented_source == nil
        @commented_source = self.comment + self.source
      end
      @commented_source
    end

    def code_object
      if @code_object == nil
        YARD::Registry.clear
        YARD::parse_string(commented_source)
        @code_object = YARD::Registry.first
      end
      @code_object
    end

    def docstring
      if @docstring == nil
        @docstring = code_object.docstring
      end
      @docstring
    end

    def docstring_summary
      if @docstring_summary == nil
        @docstring_summary = code_object.docstring.summary
      end
      @docstring_summary
    end

    def docstring_tags
      if @docstring_tags == nil
        @docstring_tags = docstring.tags.map { |t|
          {name: t.name, tag_name: t.tag_name, text: t.text, types: t.types}
        }
      end
      @docstring_tags
    end

    def signature
      if @signature == nil
        @signature = code_object.signature
      end
      @signature
    end

    def parameter_defaults
      if @parameter_defaults == nil
        @parameter_defaults = code_object.parameters.map{|n,d| [n.to_sym, d]}
      end
      @parameter_defaults
    end

    def visibility
      if @visibility == nil
        @visibility = code_object.visibility
      end
      @visibility
    end

    def scope
      if @scope == nil
        @scope = code_object.scope
      end
      @scope
    end

  end

end

class Method
  include MethodReflect::MethodExtensions
end

class UnboundMethod
  include MethodReflect::MethodExtensions
end

class Proc
  include MethodReflect::MethodExtensions
end
