#import "template.typ": *
#set text(lang: "nob")

// Create the front page
#show: project.with(
  title: "Hvordan lage svart te?",
  author: "Helle Augland Grasmo",
  course: "IELET2112",
  groupName: "Not applicable",
  groupNumber: 0,
  bilag: 0,
  teacher: "Dominik Osinksi",
  semester: "vår 2024",
  pageBreakBetweenHeadings: true
)

#set math.equation(numbering: "(1)")
#set ref(supplement: none)

// Include and display all the subpages
#include "Sections/01_Introduction.typ"
#include "Sections/02_Theory.typ"
#include "Sections/03_Hardware.typ"
#include "Sections/04_Software.typ"
#include "Sections/05_Experiments_and_results.typ"
#include "Sections/06_Conclusions.typ"
#include "Sections/07_Feedback.typ"
#include "Sections/08_References.typ"
#include "Sections/09_Attachments.typ"
