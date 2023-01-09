function memoize(f) {
    let cache = {};
    return function(x) {
      if (cache[x]) {
        return cache[x];
      }
      const result = f(x);
      cache[x]=result;
      return result;
    }
  }
  