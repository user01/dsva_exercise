

def trial(value):
    if not isinstance( value, int ):
        return 0
    runs = 0
    while(value > 1):
        if (value % 2 == 0):
            #even
            value /= 2
        else:
            #odd
            value = (value * 3) + 1
        runs+=1
    return runs

def _trialFormat(value):
    return "{} requires {}".format(value,trial(value))

def _demo():
    print("Starting Demo")
    results = "\n".join(list(map(_trialFormat,range(0,10))))
    print(results)

if __name__ == "__main__":
    # execute only if run as a script
    _demo()