require 'spec_helper'

RSpec.describe Spot::Parser do
  it { is_expected.to respond_to(:generate_html) }

  describe '.generate_html' do
    let!(:type) { :carta }
    let!(:params) { {} }

    it 'calls Generators::HTML.new.render' do
      expect_any_instance_of(Spot::Parser::Generators::HTML).to receive(:render).once
      described_class.generate_html(type, params)
    end
  end
end
