getCinemaValue ← {⍵ < 18 : 15 ⋄ ⍵ ≥ 18 ∧ ⍵ < 60 : 30 ⋄ 20}
cinema ← { +/ getCinemaValue¨ ⍵ }