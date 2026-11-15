import Reuse035.Projection
namespace Reuse035

-- The frame includes identity allocation, full parent phases, owner, and the
-- ordered command prefix. Coordinate advancement is deliberately separate.
theorem finish_frame (s : State np nc) (t : Fin nc) (row : Child np)
 (bound : s.children t = some row) :
 (incrementalAfter s t).children t = some (terminalize row) ∧
 (∀ i, i ≠ t → (incrementalAfter s t).children i = s.children i) ∧
 (incrementalAfter s t).parents = s.parents ∧
 (incrementalAfter s t).usedParents = s.usedParents ∧
 (incrementalAfter s t).usedChildren = s.usedChildren ∧
 (terminalize row).owner = row.owner ∧
 (incrementalAfter s t).commands = s.commands ∧
 (incrementalAfter s t).lineage = s.lineage ∧
 (incrementalAfter s t).position = s.position+1 := by
 refine ⟨by simp [incrementalAfter,point,bound], ?_,rfl,rfl,rfl,rfl,rfl,rfl,rfl⟩
 intro i different
 simp [incrementalAfter,point,different]

-- Equality of exact maps, including empty rows and owner buckets. No cached
-- equality is a hypothesis: advance and rebuild are independently defined.
theorem view_update_exact (s : State np nc) (t : Fin nc) :
 advance (rebuild s) t = rebuild (incrementalAfter s t) := by
 cases bound : s.children t with
 | none =>
   have rows : point s.children t ((s.children t).map terminalize) = s.children := by
    funext i
    by_cases hit : i=t <;> simp_all [point]
   have unchanged : advance (rebuild s) t = rebuild s := by simp [advance,rebuild,bound]
   rw [unchanged]
   have : rebuild (incrementalAfter s t) = rebuild s := by
    unfold incrementalAfter rebuild
    rw [rows]
   exact this.symm
 | some row =>
   simp only [advance,rebuild,bound,incrementalAfter,Option.map_some]
   congr 1
   funext p i
   by_cases hit : i=t
   · subst i
     by_cases own : p=row.owner
     · subst p; simp [advance,rebuild,bound,incrementalAfter,point,terminalize]
     · have other : row.owner ≠ p := Ne.symm own
       simp [advance,rebuild,bound,incrementalAfter,point,terminalize,own,other]
   · by_cases own : p=row.owner <;>
      simp [advance,rebuild,bound,incrementalAfter,point,terminalize,hit,own]

-- Full enumeration and point update give equal states, not just equal safety.
theorem reference_after_eq (s : State np nc) (t : Fin nc) :
 referenceAfter s t = incrementalAfter s t := by
 have rows : (fun i : Fin nc => ((referenceRows s t)[i.val]?).join) =
    point s.children t ((s.children t).map terminalize) := by
  funext i
  simp [referenceRows, List.getElem?_ofFn, i.isLt, point]
  split <;> simp_all
 simp only [referenceAfter,incrementalAfter,rows]
end Reuse035
