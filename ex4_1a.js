let cache = {};
function factorial(n) {
    if (cache[args]) {
        return cache[args];
      }
  if (n === 0 ||n===1) {
    return 1;
  }
  cache[n]=n*factorial(n-1);
  return cache[n];
}

