let cache = {};
function fibonacci(n) {
  if (cache[n]) {
    return cache[n];
  }
  if (n === 0) {
    return 0;
  }
  if (n === 1 || n === 2) {
    return 1;
  }
  cache[n] = fibonacci(n - 1) + fibonacci(n - 2);
  return cache[n];
}