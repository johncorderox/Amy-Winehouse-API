class TestWorker

  include Sidekiq::Worker
  sidekiq_options retry: false

    def perform
      puts "@@@@@@@@@"
    end
end
