#set page(paper: "a4")

#let ch(num) = {
  pagebreak()
  [#metadata(num) #label("ch-" + num)]
  [Chapter #num]
}

#context {
  let m = query(label("ch-01"))
  if m.len() > 0 {
    [Chapter 01 is at page: #counter(page).at(m.first().location()).first()]
  }
}

#ch("01")
#ch("02")
