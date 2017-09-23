defmodule ScheduleTweet.Scheduler do
  def schedule_file(schedule, file) do
     Quantum.add_job(schedule, fn -> ScheduleTweet.FileReader.get_strings_to_tweet(file) 
     |> ScheduleTweet.TweetServer.tweet end)
   end 
end