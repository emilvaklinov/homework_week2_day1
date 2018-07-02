class Student

def initialize(student_name, cohort_number)

  @student_name = student_name
  @cohort_number = cohort_number

  end

def student_name
  return @student_name

end

def cohort_number
  return @cohort_number
end

def set_student_name(name)
  @student_name = name
end

def set_cohort_number(number)
  @cohort_number = number
end

def talk(this)
    return this.to_s
  end

 #define a method that returns a string containing the student's favourite language, passed as an argument
  def say_favourite_language(language)
    return "I love #{language}!"
  end

end
