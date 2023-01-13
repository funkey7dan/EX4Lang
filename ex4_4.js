function memoize(f) {
  const cache = {};
  return function (...args) {
    const key = JSON.stringify(args);
    if (key in cache) {
      console.log("cache daddy")
      return cache[key];
    }
    const result = f(...args);
    cache[key] = result;
    return result;
  }
}

function multi(a, b) {
  return a * b
}
multi = memoize(multi)
