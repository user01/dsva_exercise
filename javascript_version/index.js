const R = require('ramda')
const ramdaVersion = R.pipe(
    R.unfold(n => n == 1 ? false : [n, n % 2 == 0 ? (n / 2) : 1 + (n * 3)]),
    R.length
);


const recursionVersion = (initialNumber) => {
    return recursionVersionInternal(initialNumber, 0);
}
const recursionVersionInternal = (initialNumber, runs) => {
    if (initialNumber == 1) return runs;
    if (initialNumber % 2 == 0) {
        //even
        return recursionVersionInternal(initialNumber / 2, runs + 1);
    } else {
        // odd
        return recursionVersionInternal((initialNumber * 3) + 1, runs + 1);
    }
}

const forVersion = (number) => {
    var runs = 0;
    while (number > 1) {
        if (number % 2 == 0) {
            //even
            number /= 2;
        } else {
            // odd
            number = (number * 3) + 1
        }
        runs++;
    }
    return runs;
}


module.exports = {
    'ramda': ramdaVersion,
    'recursion': recursionVersion,
    'for': forVersion
};