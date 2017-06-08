
class DashboardController < ApplicationController
  require 'twilio-ruby'
  def dashboard
    time = "Today"

    if request.post?
      if params[:time]
        time = params[:time]
      end
      if params[:text]
        account_sid = "ACf46ecff7e04795f989999626958f67e3" # Your Account SID from www.twilio.com/console
        auth_token = "8cb4eb5984089fc0674716073e4dd043"   # Your Auth Token from www.twilio.com/console

        @client = Twilio::REST::Client.new account_sid, auth_token
        message = @client.account.messages.create(:body => "Hi, Please be advised your public sentiment score has
              dropped below 75%. For Further Information follow the link: www.quickact.com",
            :to => "+16462589816",    # Replace with your phone number
            :from => "+18315402875"
        )
      end
    end
    if time == "Today"
      @todayclass= "time-menu-filled"
      @news_articles_size = 30
      @twitter_articles_size = 78
      @facebook_trends_size = 55
    else
      @todayclass="time-menu"
    end

    if time == "Weekly"
      @news_articles_size = 68
      @twitter_articles_size = 245
      @facebook_trends_size = 113
      @weeklyclass= "time-menu-filled"
    else
      @weeklyclass="time-menu"
    end

    if time == "All-Time"
      @allclass= "time-menu-filled"
      @news_articles_size = 3536
      @twitter_articles_size = 13843
      @facebook_trends_size = 5824
    else
      @allclass="time-menu"
    end

    #generate the percent and letter of overal sentiment.
    @letter = Sentiment.generate_rating_letter(time)
    @percent = Sentiment.generate_rating_percent(time)

    # generate the news letter
    @news_rating = Sentiment.generate_news_letter(time)[0]
    @twitter_rating = Sentiment.generate_twitter_letter(time)[0]
    @facebook_rating = Sentiment.generate_facebook_letter(time)[0]

    # generate the css class of the mini letter ratings
    @news_rating_class = Sentiment.generate_news_letter(time)[1]
    @twitter_rating_class = Sentiment.generate_twitter_letter(time)[1]
    @facebook_rating_class = Sentiment.generate_facebook_letter(time)[1]

    #Generate number of ratings per category like positive negative neutral. Returns array
    @facebook_ratings = Sentiment.generate_facebook_sources(time, @facebook_articles_size)
    @twitter_ratings = Sentiment.generate_twitter_sources(time, @twitter_trends_size)
    @news_ratings = Sentiment.generate_news_sources(time, @news_articles_size)

    # @news = media_news_path(time)
    # @facebook = media_facebook_path(time)
    # @twitter = media_twitter_path(time)

    @time = time

    if @percent <= 100
      @letter_class = 'green-letter'
    end

    if @percent < 90
      @letter_class = 'yellow-letter'
    end

    if @percent < 80
      @letter_class = 'red-letter'
    end


  end
end
