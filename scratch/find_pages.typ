#context {
  let ch4_loc = query(heading.where(level: 1)).map(h => (h.body, counter(page).at(h.location()).first()))
  [#ch4_loc]
}
