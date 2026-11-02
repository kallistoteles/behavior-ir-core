"""Exact ASCII byte quoting with one kernel string literal, not per-byte ASTs.

Restricted Rust source is ASCII; semantic entity/context text is not restricted
by this helper. Non-ASCII source never receives a substituted/lossy encoding.
"""
def lean_ascii_expression(raw):
    source=raw.decode("ascii",errors="strict")
    pieces=[]
    recovered=bytearray()
    for character in source:
        number=ord(character)
        if character=='"': piece='\\"'
        elif character=='\\': piece='\\\\'
        elif character=='\n': piece='\\n'
        elif character=='\r': piece='\\r'
        elif character=='\t': piece='\\t'
        elif 32<=number<=126: piece=character
        else: piece='\\u'+format(number,'04x')
        pieces.append(piece)
        recovered.append(number)
    if bytes(recovered)!=raw:
        raise ValueError("byte quote is not exact")
    return '("'+''.join(pieces)+'" : String).toByteArray.data.toList'

def lean_ascii_bytes(raw):
    return "def actualBytes : List UInt8 := "+lean_ascii_expression(raw)+"\n"

def lean_ascii_chunks(chunks):
    return "def actualChunks : List (List UInt8) := [\n"+",\n".join(lean_ascii_expression(chunk) for chunk in chunks)+"]\n"
