# n = 5

# *---*
# -*-*-
# --*--
# -*-*-
# *---*

# n = 2
# **
# **

# n = 1
# *


# n = 4
# *--*
# -**-
# -**-
# *--*


# n = 3
# *-*
# -*-
# *-*

require 'test/unit'

def doline(n, pos)
   n.times.reduce([]) do |acc, index|
     if pos == index || (index + pos) == (n - 1)
       char = '*'
     else
       char = '-'
     end

     acc << char
   end.join
end

def diag(n)
  n.times.reduce([]) do |acc, index|
    acc << doline(n, index)
  end.join("\n") + "\n"
end

class DiagonalStar < Test::Unit::TestCase

  def test_first
    expected =<<END
*---*
-*-*-
--*--
-*-*-
*---*
END
    assert_equal(expected, diag(5))
  end

  def test_second
    expected =<<END
*--*
-**-
-**-
*--*
END
    assert_equal(expected, diag(4))
  end

  def test_third
    expected =<<END
*-*
-*-
*-*
END
    assert_equal(expected, diag(3))
  end
end
