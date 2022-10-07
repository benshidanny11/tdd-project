require './solver'
describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  context 'Test the factorial' do
    it 'should return the factorial of a given number' do
      factorial = @solver.factorial(5)
      expect(factorial).to eql 120
      expect(@solver.factorial(10)).to eql 3_628_800
    end

    it 'should return the factorial of 1' do
      factorial = @solver.factorial(0)
      expect(factorial).to eql 1
    end

    it 'should raise an exception' do
      expect { @solver.factorial(-2) }.to raise_error('Provided number is less than 0')
    end
  end

  context 'Test the reverse method' do
    it 'should return the reverse string of the argument in reverse method' do
      reversed_string = @solver.reverse('Goodbye')
      expect(reversed_string).to eql 'eybdooG'
    end
  end

  context 'Test the fizzbuzz method' do
    it 'should return fizzbuzz' do
      string = @solver.fizzbuzz(15)
      expect(string).to eql 'fizzbuzz'
    end

    it 'should return fizz' do
      string = @solver.fizzbuzz(9)
      expect(string).to eql 'fizz'
    end

    it 'should return buzz' do
      string = @solver.fizzbuzz(10)
      expect(string).to eql 'buzz'
    end

    it 'should return 7' do
      string = @solver.fizzbuzz(7)
      expect(string).to eql '7'
    end
  end
end
