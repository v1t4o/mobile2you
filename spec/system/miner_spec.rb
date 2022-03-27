require 'spec_helper'
require 'diamond'

describe 'Take a nuggets and count the diamonds' do
    it '1 - And return 2 diamonds' do
        result = Diamond.miner('<.<..>>.>><')
        
        expect(result).to eq '2 diamante(s) extraído(s).'
    end

    it '2 - And return 5 diamonds' do
        result = Diamond.miner('<<.<<..>><>><.>.<.<.<<<')
        
        expect(result).to eq '5 diamante(s) extraído(s).'
    end

    it '3 - And return 11 diamonds' do
        result = Diamond.miner('<<.<<..>><>><.>.>.<<.>.<.>>>><>><>>')
        
        expect(result).to eq '11 diamante(s) extraído(s).'
    end

    it '1 - And return 0 diamonds' do
        result = Diamond.miner('<<.<<..<<')
        
        expect(result).to eq '0 diamante(s) extraído(s).'
    end

end