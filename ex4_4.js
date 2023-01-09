function memoize(f) {
    const cache = {};
    return function(...args) {
      const key = JSON.stringify(args);
      if (key in cache) {
        return cache[key];
      }
      const result = f(...args);
      cache[key] = result;
      return result;
    }
  }