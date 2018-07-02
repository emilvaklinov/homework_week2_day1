require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestCodeclanStudent < MiniTest::Test

  def test_student_name
      student = Student.new("John", "E23")
      assert_equal("John", student.student_name())
    end

    def test_cohort_number
      student = Student.new("John", "E23")
      assert_equal("E23", student.cohort_number)
      end


    def test_set_student_name
      student = Student.new("John", "E23")
      student.set_student_name("Peter")

      assert_equal("Peter", student.student_name())
        end

    def test_set_cohort_number
      student = Student.new("John", "E23")
    student.set_cohort_number("E22")
      assert_equal("E22", student.cohort_number)
      end

      def test_talk
    student = Student.new("John", "E23")

    assert_equal("Hi, I can talk", student.talk("Hi, I can talk"))
  end

  def test_say_favourite_language
     student = Student.new("John", "E23")
     assert_equal("I love Ruby!", student.say_favourite_language("Ruby"))
   end


end
