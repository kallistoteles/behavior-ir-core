import Core033.Source

/- A byte-level parser for the first restricted standalone Rust compilation
unit. Lexical and grammar judgments are separate from parsing and generation.
Only ASCII source tokens are admitted; entity/string data are not source code. -/
namespace Core033.SourceParser

abbrev Bytes := List UInt8

def whitespace (b : UInt8) : Bool := b == 9 || b == 10 || b == 13 || b == 32
def wordChar (b : UInt8) : Bool :=
  (65 ≤ b && b ≤ 90) || (97 ≤ b && b ≤ 122) || (48 ≤ b && b ≤ 57) || b == 95
def punctuation (b : UInt8) : Bool := b == 40 || b == 41 || b == 58 || b == 123 || b == 125 || b == 60 || b == 62 || b == 61

def scan (predicate : UInt8 → Bool) : Bytes → Bytes × Bytes
  | [] => ([],[])
  | b :: rest =>
      if predicate b then
        let result := scan predicate rest
        (b :: result.1,result.2)
      else ([],b :: rest)

def Stopped (predicate : UInt8 → Bool) : Bytes → Prop
  | [] => True
  | b :: _ => predicate b = false

theorem scan_spec (predicate : UInt8 → Bool) (bytes : Bytes) :
    (scan predicate bytes).1 ++ (scan predicate bytes).2 = bytes ∧
    (scan predicate bytes).1.all predicate = true ∧ Stopped predicate (scan predicate bytes).2 := by
  induction bytes with
  | nil => simp [scan, Stopped]
  | cons b rest ih =>
      cases hb : predicate b <;> simp_all [scan, Stopped]

inductive Token where
  | word (bytes : Bytes)
  | symbol (byte : UInt8)
  | arrow
  deriving DecidableEq, Repr

/-- Declarative lexical meaning, including maximal word boundaries. -/
inductive Tokenizes : Bytes → List Token → Prop where
  | empty (gap : Bytes) (hg : gap.all whitespace = true) : Tokenizes gap []
  | word (gap spelling rest : Bytes) (tail : List Token)
      (hg : gap.all whitespace = true) (hn : spelling ≠ [])
      (hw : spelling.all wordChar = true) (hs : Stopped wordChar rest)
      (ht : Tokenizes rest tail) :
      Tokenizes (gap ++ spelling ++ rest) (.word spelling :: tail)
  | arrow (gap rest : Bytes) (tail : List Token)
      (hg : gap.all whitespace = true) (ht : Tokenizes rest tail) :
      Tokenizes (gap ++ [45,62] ++ rest) (.arrow :: tail)
  | symbol (gap : Bytes) (byte : UInt8) (rest : Bytes) (tail : List Token)
      (hg : gap.all whitespace = true) (hb : punctuation byte = true)
      (ht : Tokenizes rest tail) :
      Tokenizes (gap ++ [byte] ++ rest) (.symbol byte :: tail)

def lex : Nat → Bytes → Option (List Token)
  | 0, _ => none
  | fuel+1, bytes =>
      let skipped := scan whitespace bytes
      match skipped.2 with
      | [] => some []
      | b :: rest =>
          if wordChar b then
            let word := scan wordChar (b::rest)
            (lex fuel word.2).map (Token.word word.1 :: ·)
          else if b == 45 then
            match rest with
            | 62 :: remaining => (lex fuel remaining).map (Token.arrow :: ·)
            | _ => none
          else if punctuation b then
            (lex fuel rest).map (Token.symbol b :: ·)
          else none

theorem lex_sound (fuel : Nat) (bytes : Bytes) (tokens : List Token)
    (h : lex fuel bytes = some tokens) : Tokenizes bytes tokens := by
  induction fuel generalizing bytes tokens with
  | zero => simp [lex] at h
  | succ fuel ih =>
      cases hscan : scan whitespace bytes with
      | mk gap input =>
          have spec := scan_spec whitespace bytes
          rw [hscan] at spec
          obtain ⟨hsplit,hgap,hstop⟩ := spec
          cases input with
          | nil =>
              have ht : tokens = [] := by simpa [lex,hscan] using h.symm
              subst tokens
              have hb : gap = bytes := by simpa using hsplit
              rw [← hb]
              exact Tokenizes.empty gap hgap
          | cons b rest =>
              by_cases hw : wordChar b = true
              · let word := scan wordChar (b::rest)
                cases hnext : lex fuel word.2 with
                | none => simp [lex,hscan,hw,word,hnext] at h
                | some tail =>
                    have ht : tokens = Token.word word.1 :: tail := by simpa [lex,hscan,hw,word,hnext] using h.symm
                    subst tokens
                    have ws := scan_spec wordChar (b::rest)
                    change word.1 ++ word.2 = b::rest ∧ word.1.all wordChar = true ∧ Stopped wordChar word.2 at ws
                    have hn : word.1 ≠ [] := by simp [word,scan,hw]
                    have lexical := Tokenizes.word gap word.1 word.2 tail hgap hn ws.2.1 ws.2.2 (ih _ _ hnext)
                    have hb : gap ++ word.1 ++ word.2 = bytes := by rw [List.append_assoc,ws.1]; exact hsplit
                    rw [hb] at lexical
                    exact lexical
              · by_cases hb : b = 45
                · subst b
                  cases rest with
                  | nil => simp [lex,hscan,hw] at h
                  | cons c remaining =>
                      by_cases hc : c = 62
                      · subst c
                        cases hnext : lex fuel remaining with
                        | none => simp [lex,hscan,hw,hnext] at h
                        | some tail =>
                            have ht : tokens = Token.arrow :: tail := by simpa [lex,hscan,hw,hnext] using h.symm
                            subst tokens
                            have lexical := Tokenizes.arrow gap remaining tail hgap (ih _ _ hnext)
                            have hbytes : gap ++ [45,62] ++ remaining = bytes := by simpa using hsplit
                            rw [hbytes] at lexical
                            exact lexical
                      · simp [lex,hscan,hw,hc] at h
                · by_cases hp : punctuation b = true
                  · cases hnext : lex fuel rest with
                    | none => simp [lex,hscan,hw,hb,hp,hnext] at h
                    | some tail =>
                        have ht : tokens = Token.symbol b :: tail := by simpa [lex,hscan,hw,hb,hp,hnext] using h.symm
                        subst tokens
                        have lexical := Tokenizes.symbol gap b rest tail hgap hp (ih _ _ hnext)
                        have hbytes : gap ++ [b] ++ rest = bytes := by simpa using hsplit
                        rw [hbytes] at lexical
                        exact lexical
                  · simp [lex,hscan,hw,hb,hp] at h

def digit (b : UInt8) : Bool := 48 ≤ b && b ≤ 57
def decimal (digits : Bytes) : Nat := digits.foldl (fun n b => n * 10 + (b.toNat-48)) 0
def literalSuffix : Bytes := [95,105,54,52]

/-- Mathematical spelling/meaning of the admitted positive i64 literal syntax. -/
def RustLiteral (token : Bytes) (n : Nat) : Prop :=
  ∃ digits, token = digits ++ literalSuffix ∧ digits ≠ [] ∧ digits.all digit = true ∧ decimal digits = n ∧ n < IR.half

def parseLiteral (token : Bytes) : Option Nat :=
  let count := token.length-4
  let digits := token.take count
  if token.drop count = literalSuffix ∧ digits ≠ [] ∧ digits.all digit = true then
    let n := decimal digits
    if n < IR.half then some n else none
  else none

theorem literal_sound (token : Bytes) (n : Nat) (h : parseLiteral token = some n) : RustLiteral token n := by
  unfold parseLiteral at h
  dsimp only at h
  split at h
  next spelling =>
    split at h
    next bound =>
      cases h
      refine ⟨token.take (token.length-4),?_,spelling.2.1,spelling.2.2,rfl,bound⟩
      have parts := List.take_append_drop (token.length-4) token
      rw [spelling.1] at parts
      exact parts.symm
    next => cases h
  next => cases h

def header : List Token := [
  .word [112,117,98], .word [102,110], .word [99,104,101,99,107,101,114,95,115,116,101,112],
  .symbol 40, .word [120], .symbol 58, .word [105,54,52], .symbol 41, .arrow,
  .word [98,111,111,108], .symbol 123, .word [120], .symbol 60]

/-- A complete standalone function with the ordinary primitive i64/bool types,
one bound x parameter and one signed comparison expression. No extra items. -/
def RustSyntax (tokens : List Token) (n : Nat) : Prop :=
  ∃ literal, tokens = header ++ [Token.word literal,Token.symbol 125] ∧ RustLiteral literal n

def parseTokens (tokens : List Token) : Option Nat :=
  match tokens.drop 13 with
  | [.word literal,.symbol closing] =>
      if closing = 125 ∧ tokens.take 13 = header then parseLiteral literal else none
  | _ => none

theorem tokens_sound (tokens : List Token) (n : Nat) (h : parseTokens tokens = some n) : RustSyntax tokens n := by
  unfold parseTokens at h
  split at h
  next literal closing tail =>
    split at h
    next good =>
      refine ⟨literal,?_,literal_sound literal n h⟩
      have whole := List.take_append_drop 13 tokens
      rw [good.2,tail,good.1] at whole
      exact whole.symm
    next => cases h
  next => cases h

def parseSource (bytes : Bytes) : Option Nat := (lex (bytes.length+1) bytes).bind parseTokens

def NativeDenotes (bytes : Bytes) (inputs : IR.Inputs) (result : Bool) : Prop :=
  ∃ n tokens, Tokenizes bytes tokens ∧ RustSyntax tokens n ∧
    result = Source.eval inputs (.signedLess (.wordParameter ⟨0,by decide⟩) (.wordLiteral (IR.Word64.ofNat n)))

theorem parser_sound (bytes : Bytes) (n : Nat) (h : parseSource bytes = some n) :
    ∃ tokens, Tokenizes bytes tokens ∧ RustSyntax tokens n := by
  unfold parseSource at h
  cases parsed : lex (bytes.length+1) bytes with
  | none => simp [parsed] at h
  | some tokens =>
      have hs : parseTokens tokens = some n := by simpa [parsed] using h
      exact ⟨tokens,lex_sound _ _ _ parsed,tokens_sound _ _ hs⟩

def validate (bytes : Bytes) : Bool := decide (parseSource bytes = some 0)

theorem actual_bytes_sound (bytes : Bytes) (inputs : IR.Inputs) (h : validate bytes = true) :
    NativeDenotes bytes inputs (IR.eval inputs IR.firstPrimitive) := by
  have parsed : parseSource bytes = some 0 := of_decide_eq_true h
  obtain ⟨tokens,hl,hs⟩ := parser_sound bytes 0 parsed
  refine ⟨0,tokens,hl,hs,?_⟩
  exact (Source.lower_preserves inputs IR.firstPrimitive).symm

end Core033.SourceParser
