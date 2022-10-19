$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'
require 'factory_bot'

RSpec.describe Gisbn::Book do
  
  
  describe 'gisbn' do
    
      describe '#process' do
        let(:output) { 'Introduction to Algorithms, Third Edition' }

      VCR.use_cassette('get_book') do
        subject { Gisbn::Book.new('0262033844') }
        it 'book title' do
          expect(subject.title.downcase).to eq(output.downcase)
        end
      end
        it 'book page count' do
          expect(1292).to eq subject.page_count.to_i
        end
      
    end
  end
end
