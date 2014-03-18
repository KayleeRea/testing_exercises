require "buffered_logger"


describe Logger do

  it "writes the message only after the log method has been called 5 times" do
  logger = Logger.new(File.expand_path("../../lib/new_file.rb", __FILE__))

  5.times do
    logger.log("hello")
  end

  actual = "hello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\nhello #{Time.now}\n"
  expected = File.open(File.expand_path("../../lib/new_file.rb", __FILE__)).read

  expect(actual).to eq (expected)
  end
end

