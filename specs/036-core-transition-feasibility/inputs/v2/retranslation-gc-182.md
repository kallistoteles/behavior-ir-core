# Bounded translator runtime correction

Actual293 Aeneas aborts with allocation failure during minor GC, exit -6. Source validation and descendant closure succeed; no generated-body success is claimed. Direct waited peak RSS8,315,789,312B; unchanged address-space bound8GiB.

Prospective294 uses the exact same binary and compiler IR, explicit -sequential and OCAMLRUNPARAM=d=1,o=40,v=0x400 after clearing inherited OCAML/CAML controls. Existing one-CPU/address-space/storage/wall limits remain. Exact pinned Main.ml supplies -sequential; Config.ml defaults parallel=true and Parallel.ml allocates domains from recommended_domain_count. This is a bounded tool-runtime experiment, not an established memory solution or Core timing.

Primary version-specific documentation: https://ocaml.org/manual/5.3/api/Gc.html documents space_overhead default120, lower values performing more CPU work to collect sooner, and v=0x400 exit GC statistics. https://ocaml.org/manual/5.3/runtime.html documents d as max_domains (default128 on64bit) and the OCAMLRUNPARAM syntax; https://ocaml.org/manual/5.3/native.html applies the runtime settings to native ocamlopt executables. Success must be observed; no unsupported max_overhead setting or resource-cap relaxation.
