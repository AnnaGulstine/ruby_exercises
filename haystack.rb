# Find the 'needle in the haystack' with one line of code.

haystack = {
  hay: [:hay, :hay, :hay, {
    hay: {
      hay: [:hay, {
        hay: [:hay, :hay, :needle]
      }, :hay, :hay, :hay]
    }
  }, :hay, :hay]
}

p haystack[:hay][3][:hay][:hay][1][:hay][2]
