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

function fibonacci(n) {
  if (n === 0) return 0;
  if (n === 1) return 1;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

fibonacci = memoize(fibonacci);
