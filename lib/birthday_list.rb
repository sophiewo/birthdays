
class BirthdayList

  def initialize
    @birthday_list = []
  end

  def add_name(name, birthday)
    @birthday_list << {name: name, birthday: birthday}
  end

  def print_names
    @birthday_list.each do |value|
    return "The birthday of my friend #{value[:name]} is #{value[:birthday]}"
    end
  end
end

bday = BirthdayList.new
bday.add_name("Claire", "12.04.90")
bday.add_name("Bob", "15.12.90")

p bday.print_names