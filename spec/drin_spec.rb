RSpec.describe Drin do
  it "has a version number" do
    expect(Drin::VERSION).not_to be nil
  end

  context 'when uninitialized constant' do
    it "do require" do
      expect(defined?(JSON)).to eq(nil)
      expect(defined?(Date)).to eq(nil)
      expect(JSON.parse('{}')).to eq({})
      expect(Date.new).to be_a(Date)
      expect(Tempfile.new).to be_a(Tempfile)
      expect(Fileutils.name).to eq('FileUtils')
      expect(defined?(JSON)).to eq("constant")
      expect(defined?(Date)).to eq("constant")
    end
  end
end
