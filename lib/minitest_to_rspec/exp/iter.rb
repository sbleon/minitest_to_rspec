module MinitestToRspec
  module Exp

    # Data object.  Represents an `:iter` s-expression.
    class Iter

      def initialize(exp)
        unless exp.sexp_type == :iter
          raise ArgumentError, "Expected iter, got #{exp.sexp_type}"
        end
        @exp = exp.dup
      end

      def assert_difference?
        !empty? && Exp::Call.assert_difference?(@exp[1])
      end

      def assert_no_difference?
        !empty? && Exp::Call.assert_no_difference?(@exp[1])
      end

      def assert_nothing_raised?
        !empty? && Exp::Call.assert_nothing_raised?(@exp[1])
      end

      def assert_raises?
        !empty? && Exp::Call.assert_raises?(@exp[1])
      end

      def empty?
        @exp.length == 1 # just the sexp_type
      end

      def sexp
        @exp
      end
    end
  end
end