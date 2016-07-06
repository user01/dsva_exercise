var should = require('should');
var R = require('ramda');

module.exports = (fun, label) => {

    describe(label, () => {
        it('Base Case', () => {
            var result = fun(1);
            result.should.be.a.Number.and.be.exactly(0);
        });
        it('Case 5', () => {
            var result = fun(5);
            result.should.be.a.Number.and.be.exactly(5);
        });
        it('Case Group', () => {
            var results = R.pipe(
                R.range(1),
                R.map(fun),
                R.zip([0, 1, 7, 2, 5, 8, 16, 3, 19, 6])
            )(10);
            R.forEach((arr) => {
                var expected = arr[0];
                var actual = arr[1];
                actual.should.be.a.Number.and.be.exactly(expected)
            });
        });

    });
}