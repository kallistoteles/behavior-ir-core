import Core033

/- A declared tool target, deliberately unable to generate unchecked evidence. -/
def main : IO UInt32 := do
  IO.eprintln "{\"status\":\"Unsupported\",\"reason\":\"Generator not implemented\",\"g1_pass\":false}"
  pure 6
