import Core033.ByteCursorProgram
import Core033.Codec

namespace Core033.ByteCursorRead
open WordControl

theorem exact_original_slice (input : Codec.Bytes) (position limit count : Word)
    (represented : limit.toNat=input.length) (accepted : ByteCursor.Admitted position limit count) :
    Codec.readBytes count.toNat (input.drop position.toNat)=
      some ((input.drop position.toNat).take count.toNat,input.drop (ByteCursor.next position count).toNat) := by
  have bound : count.toNat≤(input.drop position.toNat).length := by
    simp only [List.length_drop]
    unfold ByteCursor.Admitted at accepted
    omega
  rw [Codec.readBytes,if_pos bound,List.drop_drop,ByteCursor.next_exact position limit count accepted]

theorem original_bytes_partition (input : Codec.Bytes) (position limit count : Word)
    (represented : limit.toNat=input.length) (accepted : ByteCursor.Admitted position limit count) :
    input.take position.toNat++(input.drop position.toNat).take count.toNat++
      input.drop (ByteCursor.next position count).toNat=input := by
  rw [ByteCursor.next_exact position limit count accepted,←List.drop_drop]
  rw [List.append_assoc,List.take_append_drop,List.take_append_drop]

theorem exact_original_remainder (input : Codec.Bytes) (position limit count : Word)
    (represented : limit.toNat=input.length) (accepted : ByteCursor.Admitted position limit count) :
    (input.drop (ByteCursor.next position count).toNat).length=
      (ByteCursor.remaining (ByteCursor.next position count) limit).toNat := by
  rw [List.length_drop,ByteCursor.remaining_after_exact position limit count accepted,
    ByteCursor.next_exact position limit count accepted,←represented]
  omega

theorem end_means_consumed_field (input : Codec.Bytes) (position limit : Word)
    (represented : limit.toNat=input.length) (ordered : position.toNat≤limit.toNat)
    (finished : ByteCursor.remaining position limit=0) :
    position.toNat=input.length ∧ input.drop position.toNat=[] := by
  have same:=(ByteCursor.exact_endpoint position limit ordered).mp finished
  rw [same,represented]
  simp

end Core033.ByteCursorRead
