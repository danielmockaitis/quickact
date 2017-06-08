class MediaController < ApplicationController

  def twitter_feed
    @media = Medium.twitter_feed(params[:time])
    if request.ajax?
      render :json => @media
    else
      render :partial => "/media/twitter", :locals => { :media => @media }
    end
  end

  def facebook_feed
    @media = Medium.facebook_feed(params[:time])
    # render :json => Medium.facebook_feed(params[:time]), :callback => 'facebook'
    if request.ajax?
      render :json => @media
    else
      render :partial => "/media/facebook", :locals => { :media => @media }
    end
  end

  def news_feed
    @media = Medium.news_feed(params[:time])
    # render :json => Medium.news_feed(params[:time]), :callback => 'news'
    if request.ajax?
      render :json => @media
    else
      render :partial => "/media/news", :locals => { :media => @media }
    end
  end
end
