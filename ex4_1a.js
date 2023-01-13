let cache = {};
function factorial(n) {
  if (cache[n]) {
    return cache[n];
  }
  if (n === 0 || n === 1) {
    return 1;
  }
  cache[n] = n * factorial(n - 1);
  return cache[n];
}
