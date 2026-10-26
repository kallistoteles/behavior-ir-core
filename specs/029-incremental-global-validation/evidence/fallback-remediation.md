# Restore the early unsupported-module reference fallback

The446c55c campaign exceeded an absolute small-case budget: unsupported create atN1,
repetition2 took44.054529ms versus41.6021875ms. All702 complete rows remain in
`attempts/campaign-446c55c`; this is a failed/incomplete attempt. The two prior
repetitions were33.665030 and33.500468ms. The exact cause of the extra third-run
variation is unknown; the timing violation is not ignored or reclassified as passing.

Independently, every repetition showed stable extra commit work relative to release:
approximately24.5ms versus20ms. Promotion was strictly parsing and hashing a complete
record and re-establishing its parent before concluding that an unsupported global
module could never carry validity. Feature015 returned early for such modules.

`unsupported_promotion_does_not_reread_a_parent_it_cannot_reuse` actually failed with
one Backend record read instead of zero (`fallback-red.txt`). The new guard returns
no carry when neither015 locality nor the selected029 checker can support the module.
The union preserves015 eligibility. It only withdraws optimization: ordinary evaluation,
independent record reproduction and the native commit checks remain authoritative.
It grants no validity and changes no admission or semantic rule. No unnecessary parent
read or full record preparation is required to decide that there is no carry authority.

The focused41-test Store suite and Clippy pass. The three-run exploratory pilot
(`fallback-pilot.jsonl`, explicitly not final acceptance) has unsupported create
medians29.924718ms(release),34.007826ms(446c55c),27.060617ms(early fallback), with exact
observation digest equality. Update/unrelated costs also decrease; same-head evaluation
is unchanged, as expected for a commit-only guard. No frozen threshold changed.

Core source is unchanged from446c55c, so all six Core-premise mutation controls retain
their exact checked source SHA. The new Store regression specifically checks the changed
boundary. Full G3 and the entire candidate/reference campaign must be renewed.
