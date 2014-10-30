require "#{File.dirname(__FILE__)}/../lib/method_reflect.rb"

require 'test/unit'

class MethodReflectTest < Test::Unit::TestCase
  class TestClass
    # A test method
    #
    # @param a [String] a string param
    # @param b [String] an array param
    # @param c [String] a hash param
    # @param d [String] the rest of the params
    def test_method a, b=[], c={x: 1, y: 2}, *d, &e
      @args = [a, b, c, d, e]
      puts "#{@args}"
    end
  end

  def test_commented_source_method
    expected = <<-END.gsub(/^ {6}/, '')
      # A test method
      #
      # @param a [String] a string param
      # @param b [String] an array param
      # @param c [String] a hash param
      # @param d [String] the rest of the params
      def test_method a, b=[], c={x: 1, y: 2}, *d, &e
        @args = [a, b, c, d, e]
        puts "\#{@args}"
      end
    END

    result = TestClass.new.method(:test_method).commented_source

    expected_lines = expected.split("\n").map{|l| l.strip}
    result_lines = result.split("\n").map{|l| l.strip}
    expected_lines.zip(result_lines).each{|e, r|
      assert_equal(e, r)
    }
  end

  def test_code_object_method

  end

  def test_docstring_method

  end

  def test_docstring_tags_method

  end

  def test_signature_method

  end

  def test_parameter_defaults_method

  end

  def test_visibility_method

  end

  def test_scope_method

  end

  def test_commented_source_unbound

  end

  def test_code_object_unbound

  end

  def test_docstring_unbound

  end

  def test_docstring_tags_unbound

  end

  def test_signature_unbound

  end

  def test_parameter_defaults_unbound

  end

  def test_visibility_unbound

  end

  def test_scope_unbound

  end

  def test_commented_source_proc

  end

  def test_code_object_proc

  end

  def test_docstring_proc

  end

  def test_docstring_tags_proc

  end

  def test_signature_proc

  end

  def test_parameter_defaults_proc

  end

  def test_visibility_proc

  end

  def test_scope_proc

  end
end