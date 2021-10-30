module ApplicationHelper

  def get_season()
    #year

    time = Time.new

    if(time.month >= 3) && (time.month <= 5)
      "Yeah it's spring"
    elsif (time.month > 5) && (time.month <= 8)
      "Everyone loves summer"
    elsif (time.month > 8) && (time.month <= 10)
      "put on your coat fall is here"
    else
      "yuck winter"
    end
  end

  def get_random_number(max_value = 10)
    rand(max_value)
  end

  def get_random_welcome()

    opening = ["what a beautiful day.",
        "welcome ro our site. ",
        "Thank you for stopping by."]

    middle = ["we hope you find what you need.",
        "we have a wide selection. ",
        "check out our sale items."]

    ending = ["contact us if you need help.",
        "we are here to serve you. ",
        "call us if you need to 412-555-1212."]

    "#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"

  end

  def count_to_10
    x = 2
    number_list = "1"

    loop do
      number_list = number_list + ", " + x.to_s
      x += 1
      break if x > 10
    end
  end
end
