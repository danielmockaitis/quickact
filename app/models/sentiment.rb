class Sentiment < ApplicationRecord

  def self.generate_rating_letter(time)
    if time == "Today"
      return 'C-'
    end

    if time == "Weekly"
      return 'B+'
    end

    if time == "All-Time"
      return 'A-'
    end
  end

  def self.generate_rating_percent(time)
    if time == "Today"
      return 65
    end

    if time == "Weekly"
      return 81
    end

    if time == "All-Time"
      return 93
    end

  end


  # generate the Letters of the overall media feeds and return the associated class
  # Array of string and class name
  def self.generate_facebook_letter(time)
    if time == "Today"
      return ["D", "mini-red-letter"]
    end

    if time == "Weekly"
      return ["B+", "mini-yellow-letter"]
    end

    if time == "All-Time"
      return ["A-", "mini-green-letter"]
    end
  end

  def self.generate_twitter_letter(time)
    if time == "Today"
      return ["D-", "mini-red-letter"]
    end

    if time == "Weekly"
      return ["B-", "mini-yellow-letter"]
    end

    if time == "All-Time"
      return ["B", "mini-yellow-letter"]
    end

  end

  def self.generate_news_letter(time)
    if time == "Today"
      return ["A-", "mini-green-letter"]
    end

    if time == "Weekly"
      return ["B+", "mini-yellow-letter"]
    end

    if time == "All-Time"
      return ["A-", "mini-green-letter"]
    end

  end



  # Generate the number of sources for Different Media Outlets.
  # <Array> [Negative, Positive, Nuetral]
  def self.generate_facebook_sources(time, total_size)
    if time == "Today"
      return [26, 10, 14]
    end

    if time == "Weekly"
      return [27, 83, 10]
    end

    if time == "All-Time"
      return [732, 4982, 110]
    end
  end

  def self.generate_twitter_sources(time, total_size)
    if time == "Today"
      return [66, 2, 10]
    end

    if time == "Weekly"
      return [53, 179, 13]
    end

    if time == "All-Time"
      return [4212, 7431, 2200]
    end
  end

  def self.generate_news_sources(time, total_size)
    if time == "Today"
      return [25, 4, 16]
    end

    if time == "Weekly"
      return [22, 44, 2]
    end

    if time == "All-Time"
      return [225, 3009, 302]
    end
  end

end
