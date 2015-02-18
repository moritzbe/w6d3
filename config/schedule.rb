set :output, { error: "log/error.log", standard: "log/cron.log" }

every 1.hour do
  runner "CronExample.create(current_time: Time.now)"
end