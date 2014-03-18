require "buffered_logger"


describe Logger do

  it "writes the message only after the log method has been called 5 times" do
    logger = Logger.new(File.expand_path("../../lib/new_file.rb", __FILE__))

    8.times do
      logger.log("hello")
    end

    actual = "hello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\n"
    expected = File.open(File.expand_path("../../lib/new_file.rb", __FILE__)).read

    expect(actual).to eq (expected)
  end

    it "writes another 5 messages only after log has been called another 5 times, in increments of 5 even if a different number is called" do
      logger = Logger.new(File.expand_path("../../lib/new_file.rb", __FILE__))

      13.times do
        logger.log("hello")
      end

      actual = "hello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\n"
      expected = File.open(File.expand_path("../../lib/new_file.rb", __FILE__)).read

      expect(actual).to eq (expected)
    end

end

