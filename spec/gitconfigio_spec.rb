require 'spec_helper'

describe GitConfigIO do
  ls = [
        '[core]',
        "\tname = mocchi"
  ]
  name =  {
      'name' => 'mocchi'
  }
  ext = {
    'core' => name
  }
  code = <<-EOS
[core]
\tname = mocchi
EOS

  it 'has a version number' do
    expect(GitConfigIO::VERSION).not_to be nil
  end

  it 'parse_value method' do
    expect(GitConfigIO::parse_value("\tname = mocchi")).to eq(name.to_a[0])
  end

  it 'parse_node method' do
    expect(GitConfigIO::parse_node(ls)).to eq(ext)
  end

  it 'parse method' do
    expect(GitConfigIO::parse(code)).to eq(ext)
  end

  it 'generate method' do
    expect(GitConfigIO::generate(ext)).to eq(code)
  end

end
