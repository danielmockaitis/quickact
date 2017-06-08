class Medium < ApplicationRecord

  def self.twitter_feed(time)
      if time == "Today"
        return [Medium.new(:source => "Twitter", :content => "I'm Never Flying IA AGAIN! Look at this VIDEO #IAAirlines", :time => "3 Minutes Ago"),
                  Medium.new(:source => "Twitter", :content =>"How could a company treat their customers like this? #IADisaster", :time => "4 minutes Ago"),
                    Medium.new(:source => "Twitter", :content =>"I'm Scared to ever book a flight on here again. Watch This! #IAAirlines", :time => "4 minutes Ago")]
      end
      if time == "Weekly"
        return [Medium.new(:source => "Twitter", :content =>"My Puppy On Board #IAAirlines", :time => "3 Days Ago"),
                  Medium.new(:source => "Twitter", :content =>"#IAAirlines got me to my meeting today in NY.", :time => "7 Days Ago"),
                    Medium.new(:source => "Twitter", :content =>"#IAAirlines could use some better peanuts!", :time => "4 Days Ago")]
      end
      if time == "All-Time"
        return [Medium.new(:source => "Twitter", :content =>"I've always been a fan of AI Airlines #IA", :time => "3 Minutes Ago"),
                  Medium.new(:source => "Twitter", :content =>"I got bumped to first after my long trip #ThanksIA", :time => "4 Hours Ago"),
                    Medium.new(:source => "Twitter", :content =>"#IAAirlines needs some more drink selections. I ...", :time => "6 Hours Ago")]
      end
  end

  def self.facebook_feed(time)
    if time == "Today"
      return [Medium.new(:source => "Facebook", :content =>"Did you see what just happened on IA Flight? Scary VIDEO", :time => "3 Minutes Ago"),
              Medium.new(:source => "Facebook", :content =>"Check out video from my flight just now...", :time => "4 Minutes Ago"),
                Medium.new(:source => "Facebook", :content =>"Look at this violent video from IA Airlines..", :time => "7 Minutes Ago")]
    end
    if time == "Weekly"
      return [Medium.new(:source => "Facebook", :content =>"IA Airlines is slowly becoming my favorite airline", :time => "1 Day Ago"),
              Medium.new(:source => "Facebook", :content =>"IA airlines lost my bags again!", :time => "2 Days Ago"),
                Medium.new(:source => "Facebook", :content =>"Check out my view from the window seat on IA Airlines..", :time => "3 Days Ago")]
    end
    if time == "All-Time"
      return [Medium.new(:source => "Facebook", :content =>"Love IA airlines, but when will they renovate their planes?", :time => "1 Week Ago"),
              Medium.new(:source => "Facebook", :content =>"I couldn't be happier on my flight today..", :time => "4 Months Ago"),
                Medium.new(:source => "Facebook", :content =>"IA Airlines has the coolest views thanks to the windows..", :time => "2 years Ago")]
    end
  end

  def self.news_feed(time)
    if time == "Today"
      return [Medium.new(:source => "USA Today", :content =>"IA CEO: Smooth sailing till quarter ends", :time => "3 Minutes Ago"),
                Medium.new(:source => "NY TIMES", :content =>"IA Pilot awarded Golden Wings Today", :time => "4 Hours Ago"),
                  Medium.new(:source => "Wall Street Journal", :content =>"Future Looking Bright for IA Airlines STOCK: IAA", :time => "6 Hours Ago")]
    end
    if time == "Weekly"
      return [Medium.new(:source => "USA Today", :content =>"IA plans to rennovate entire fleet.'", :time => "3 Minutes Ago"),
                Medium.new(:source => "CNN", :content =>"Will IA CEO retire?", :time => "2 days Ago"),
                  Medium.new(:source => "Bloomberg", :content =>"New IA rewards program is 'What the airline industry has always needed!'", :time => "4 Days Ago")]
    end
    if time == "All-Time"
      return [Medium.new(:source => "Wall Street Journal", :content =>"Warren Buffet Invests in IA Airlines", :time => "32 Years Ago"),
                Medium.new(:source => "CNN", :content =>"Doctors Prefer Flying IA Airlines", :time => "4 Months Ago"),
                  Medium.new(:source => "Huffington Post", :content =>"IA Airlines is the most humanitarian airline company there is.", :time => "4 Years Ago")]
    end
  end

end
