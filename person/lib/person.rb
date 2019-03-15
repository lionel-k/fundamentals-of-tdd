class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name || ''
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@middle_name} #{@last_name}".squeeze(' ')
  end

  def full_name_with_middle_initial
    "#{@first_name} #{@middle_name[0]} #{@last_name}".squeeze(' ')
  end

  def initials
    "#{@first_name[0]}#{@middle_name[0]}#{@last_name[0]}"
  end
end
