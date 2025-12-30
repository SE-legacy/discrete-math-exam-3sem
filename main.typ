#import "conf.typ": details, generateAll
#import "@preview/oxifmt:1.0.0": strfmt
#set heading(numbering: "1.1")
#generateAll()
#set page(numbering: "1")

#show figure.where(kind: image): set figure(supplement: "Рис.")
#show figure.where(kind: table): set figure(supplement: "Табл.")

#set table(align: center, stroke: 0.5pt, inset: 6pt)
#show table.cell.where(y: 0): strong

#set enum(numbering: "1.a.1.")

#show sym.emptyset: set text(font: "Fira Sans")

#let i = 1

#{
  let numbering = ""
  if details.sections.numbering {
    if details.sections.prefix.len() > 0 {
      numbering += details.sections.prefix + " "
    }
    numbering += "1.1. "
  }
  for section in details.sections.sections {
    heading(eval(section, mode: "markup"), numbering: numbering, hanging-indent: 0pt)
    include strfmt("sections/{:02}.typ", i)
    pagebreak(weak: true)
    i += 1
  }
}
