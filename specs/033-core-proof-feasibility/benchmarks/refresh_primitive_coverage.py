"""Refresh a derived status index; never replace a frozen receipt or grant authority."""
import datetime,hashlib,json,re
from pathlib import Path
feature=Path('specs/033-core-proof-feasibility');root=feature/'evidence/scoped-chain'
receipts={
 'sha_source':'sha-actual-source-composed-001/receipt.json',
 'sha_source_mutations':'sha-whole-source-controls-001/receipt.json',
 'word_matrix_schemas':'word-matrix-formal-001/report.json',
 'matrix_shape':'matrix-shape-formal-001/report.json',
 'matrix_binary_codec':'matrix-codec-formal-001/report.json',
 'full_digest_port_schemas':'digest-assembly-formal-001/report.json',
 'hash_stream_and_word_control':'word-control-stream-formal-001/report.json',
 'sha_actual_rows':'sha-matrix-groups-001/receipt.json',
 'sha_actual_matrix':'sha-matrix-packet-003/receipt.json',
 'control_source':'control-actual-source-composed-001/receipt.json',
 'control_source_mutations':'control-source-mutations-001/receipt.json',
 'control_actual_matrix':'control-actual-matrix-003/receipt.json',
 'control_native_vectors':'control-native-001/receipt.json',
 'control_matrix_mutations':'control-matrix-mutations-002/receipt.json',
}
index={}
for name,relative in receipts.items():
 path=root/relative
 if path.exists():
  raw=path.read_bytes();r=json.loads(raw);index[name]={'path':relative,'sha256':hashlib.sha256(raw).hexdigest(),'outcome':r['outcome'],'fresh_kernel_replay':r.get('fresh_kernel_replay',False)}
 else:index[name]={'path':relative,'outcome':'NoCompletedReceipt','fresh_kernel_replay':False}
primitives=[
 {'primitive':'u32 literal/AND/XOR/NOT/wrapping-add/ROTR/SHR','mathematics':'Checked','actual_source':['sha_source','control_source'],'actual_matrix':['sha_actual_matrix','control_actual_matrix'],'open':'No complete K source/circuit is claimed by a standalone instruction or SHA/control program.'},
 {'primitive':'full u64 addition represented by two u32 words','mathematics':'Checked','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'Core checked-overflow and final counter guards must be wired separately.'},
 {'primitive':'u32 unsigned comparison/zero/sign','mathematics':'Checked','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'Full physical machine input decoding and use remain open.'},
 {'primitive':'conditional word selection','mathematics':'CheckedUnderBooleanConditionEncoding','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'The helper accepts raw u32 masks. Exact Boolean selection requires caller-enforced condition=0 or1; standalone control matrix does not enforce Boolean input4.'},
 {'primitive':'SHA256 complete compression','mathematics':'Checked','actual_source':['sha_source'],'actual_matrix':['sha_actual_matrix'],'open':'Streaming byte ingress, padded block framing and physical machine use remain separate.'},
 {'primitive':'four full range-checked u64 digest limbs','mathematics':'CheckedSchemasAndFull256BitInjection','evidence':['full_digest_port_schemas'],'open':'Actual whole-K public claim ports, range rows and Nova endpoint connection are not established. The SHA compression artifact has eight u32 outputs.'},
 {'primitive':'canonical matrix integer/stream decoder','mathematics':'CheckedOriginalStrictParserRoundtrip','evidence':['matrix_binary_codec','sha_actual_matrix','control_actual_matrix'],'open':'A canonical decoded matrix still must equal the proved expected relation; no shape-only authority.'},
 {'primitive':'SHA message streaming/progress/padding/finalization','mathematics':'Checked','evidence':['hash_stream_and_word_control'],'open':'Actual source/circuit stream controller and authenticated byte supply are open.'},
 {'primitive':'canonical application record codecs, signed Int64/UTF8, identities','mathematics':'PreviouslyCheckedCodecAndIdentityModels','open':'Actual generated machine stream/record decoding and preimage use are open; native codec tests alone do not close them.'},
 {'primitive':'InitDone/Done/AttemptDone, counters, authenticated path/coverage/finalizer','mathematics':'PreviouslyCheckedAbstractMachineAndViewModels','open':'Physical bounded instruction refinement, actual whole machine Rust/matrix, all input/range/stream/finalizer constraints and release entrypoint binding are open.'},
]
result={'format_version':'core033.primitive-coverage-index.v1','derived_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),'task':'T042','status':'InProgress','completed_tasks':len(re.findall(r'^- \[[Xx]\] T\d+',(feature/'tasks.md').read_text(),re.M)),'total_tasks':93,'receipts':index,'primitives':primitives,'authority':'Derived navigation only. Original receipts and their exact theorem/input scopes are authoritative. Missing/pending evidence is not Checked.','release_relation_complete':False,'g1_pass':False}
(root/'t042-primitive-coverage.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
print(json.dumps({'task':'T042','status':result['status'],'completed_tasks':result['completed_tasks'],'checked_fresh_receipts':sum(r['outcome']=='Checked' and r['fresh_kernel_replay'] for r in index.values()),'g1_pass':False}))
