#import "../main.typ"
#context {
  let targets = query(<conclusion-start>)
  if targets.len() > 0 {
    let p = counter(page).at(targets.first().location()).first()
    [PAGE: #p]
  }
}
