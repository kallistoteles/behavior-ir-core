import Core033.Codec

namespace Core033.CodecTags
open Codec

theorem header_size (tag : Fin 65536) : (header tag).length=22 := by
  simp [header,magic_size,encodeLE_size]

theorem different_tags_distinct_records (left right : Fin 65536) (different : left≠right)
    (leftPayload rightPayload : Bytes) : header left++leftPayload≠header right++rightPayload := by
  intro same
  have first : (header left++leftPayload).take 22=header left := by rw [←header_size left];simp
  have second : (header right++rightPayload).take 22=header right := by rw [←header_size right];simp
  have headers:=congrArg (fun bytes : Bytes=>bytes.take 22) same
  dsimp only at headers
  rw [first,second] at headers
  unfold header at headers
  have tags:=List.append_cancel_left headers
  have values:=bounded_integer_injective 2 left.val right.val left.isLt right.isLt tags
  exact different (Fin.ext values)

end Core033.CodecTags
