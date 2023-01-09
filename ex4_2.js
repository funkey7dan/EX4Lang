function memoize(f) {
    const cache = new Map();
    return function(x) {
      if (cache.has(x)) {
        return cache.get(x);
      }
      const result = f(x);
      cache.set(x, result);
      return result;
    }
  }
  