$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'
require 'factory_bot'

RSpec.describe Gisbn::Book do
  subject { Gisbn::Book.new('0262033844') }

  describe 'gisbn' do
    VCR.use_cassette('get_book') do
      describe '#process' do
        let(:output) { 'Introduction to Algorithms, Third Edition' }

        it 'book title' do
          expect(subject.title.downcase).to eq(output.downcase)
        end

        it 'book page count' do
          expect(1292).to eq subject.page_count.to_i
        end
      end
    end
  end
end
