camilaAge ← { 
  sorted ← ⍵[⍋⍵]
  mid ← (⍴sorted)÷2
  sorted[(⌊mid)+1]
}