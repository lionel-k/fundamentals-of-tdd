class Calculator
  def add(a, b)
    a + b
  end

  def factorial(value)
    if value.zero?
      1
    else
      value * factorial(value - 1)
    end
  end
end
