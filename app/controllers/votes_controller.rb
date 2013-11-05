class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    vote = topic.votes.build
    vote.save!
    redirect_to(topics_path)
  end

  def destroy
    # We want to find a vote that has already been created
    vote = Vote.find(params[:id])

    # And remove it from the votes
    vote.destroy
    redirect_to(topics_path)
  end
end
