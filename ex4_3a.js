function memoize(f) {
  let cache = {};
  return function (x) {
    if (cache[x]) {
      return cache[x];
    }
    const result = f(x);
    cache[x] = result;
    console.log(cache)
    return result;
  }
}

function factorial(n) {
  if (n === 0 || n === 1) return 1;
  return n * factorial(n - 1);
}

factorial = memoize(factorial);
