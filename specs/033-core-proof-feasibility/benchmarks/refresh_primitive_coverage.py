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
 'digest_byte_codec':'digest-byte-codec-formal-002/report.json',
 'digest_word_source':'digest-actual-source-composed-001/receipt.json',
 'digest_native_vectors':'digest-native-001/receipt.json',
 'digest_packing_math':'digest-packing-formal-001/report.json',
 'packed_digest_matrix':'packed-digest-actual-matrix-001/receipt.json',
 'stream_counter_refinement':'stream-counters-formal-001/report.json',
 'counter_source':'counter-actual-source-composed-001/receipt.json',
 'counter_matrix':'counter-matrix-packet-002/receipt.json',
 'counter_native_vectors':'counter-native-001/receipt.json',
 'counter_matrix_file_binding':'counter-matrix-closed-value-binding-001/receipt.json',
 'block_ingress_math':'block-ingress-formal-001/report.json',
 'block_ingress_source':'block-ingress-source-complete-001/receipt.json',
 'padding_words_math':'padding-words-formal-001/report.json',
 'padding_words_source':'padding-actual-source-composed-001/receipt.json',
 'padding_words_matrix':'padding-actual-matrix-001/receipt.json',
 'padding_native_vectors':'padding-native-001/receipt.json',
 'length_bytes_math':'length-bytes-formal-002/report.json',
 'length_bytes_source':'length-bytes-actual-source-composed-001/receipt.json',
 'length_bytes_matrix':'length-bytes-actual-matrix-001/receipt.json',
 'padding_source_file_binding':'padding-source-closed-value-binding-001/receipt.json',
 'padding_matrix_file_binding':'padding-matrix-closed-value-binding-001/receipt.json',
 'length_bytes_source_file_binding':'length-bytes-source-closed-value-binding-001/receipt.json',
 'length_bytes_matrix_file_binding':'length-bytes-matrix-closed-value-binding-001/receipt.json',
 'length_bytes_native_vectors':'length-bytes-native-001/receipt.json',
 'padding_stream_math':'padding-stream-formal-001/report.json',
 'block_ingress_native_vectors':'block-ingress-native-001/receipt.json',
 'signed_positive_source':'signed-actual-source-composed-001/receipt.json',
 'signed_positive_matrix':'signed-actual-matrix-001/receipt.json',
 'signed_native_vectors':'signed-native-001/receipt.json',
 'packed_digest_file_binding':'packed-digest-closed-value-binding-001/receipt.json',
 'signed_matrix_file_binding':'signed-closed-value-binding-001/receipt.json',
 'closed_value_binding_controls':'closed-value-binding-controls-001/receipt.json',
}
for subject in ['sha-source','sha-matrix','control-source','control-matrix','digest-source','counter-source','signed-source']:
 receipts[subject.replace('-','_')+'_file_binding']=subject+'-closed-value-binding-001/receipt.json'
index={}
for name,relative in receipts.items():
 path=root/relative
 if path.exists():
  raw=path.read_bytes();r=json.loads(raw);index[name]={'path':relative,'sha256':hashlib.sha256(raw).hexdigest(),'outcome':r['outcome'],'fresh_kernel_replay':r.get('fresh_kernel_replay',False)}
 else:index[name]={'path':relative,'outcome':'NoCompletedReceipt','fresh_kernel_replay':False}
primitives=[
 {'primitive':'SHA padding size/block count/full-u64 bit length and profile guard','mathematics':'Checked','evidence':['padding_words_math'],'actual_source':['padding_words_source'],'actual_matrix':['padding_words_matrix'],'open':'A physical caller must constrain the profile flag; actual padding-byte selection and authenticated stream supply remain open.'},
 {'primitive':'all eight SHA length-field bytes and their byte ranges','mathematics':'Checked','evidence':['length_bytes_math'],'actual_source':['length_bytes_source'],'actual_matrix':['length_bytes_matrix'],'open':'Actual matrix and physical framing use are checked separately; native vectors are supplementary.'},
 {'primitive':'all sixteen SHA input words and all sixty-four full-u32 byte-range guards','mathematics':'Checked','evidence':['block_ingress_math','block_ingress_native_vectors'],'open':'Actual byte-ingress source/matrix correspondence is in progress. A physical caller must constrain all 64 guard outputs to one; authenticated message-byte supply and padding remain separate.'},
 {'primitive':'full u64 processed/remaining counters, overflow/underflow/progress/ready guards','mathematics':'Checked','evidence':['stream_counter_refinement'],'actual_source':['counter_source'],'actual_matrix':['counter_matrix'],'open':'Standalone counter flags must still be constrained to acceptance and wired to authenticated physical-machine state. No whole-K completion is claimed.'},
 {'primitive':'exact Core signed Int64 positive rule','mathematics':'Checked','actual_source':['signed_positive_source'],'actual_matrix':['signed_positive_matrix'],'evidence':['signed_matrix_file_binding'],'open':'The input pair represents the complete two-complement Int64. Canonical record decoding, authenticated entity access and physical rule/finalizer wiring remain open.'},
 {'primitive':'SHA big-endian words to exact profile digest bytes/four-u64 encoding','mathematics':'Checked','evidence':['digest_byte_codec'],'actual_source':['digest_word_source'],'actual_matrix':['packed_digest_matrix'],'open':'Standalone actual four-u64 field binding is Checked. Native converter returns eight u32 words; whole-K/claim wrapper remains open.'},
 {'primitive':'u32 literal/AND/XOR/NOT/wrapping-add/ROTR/SHR','mathematics':'Checked','actual_source':['sha_source','control_source'],'actual_matrix':['sha_actual_matrix','control_actual_matrix'],'open':'No complete K source/circuit is claimed by a standalone instruction or SHA/control program.'},
 {'primitive':'full u64 addition represented by two u32 words','mathematics':'Checked','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'Standalone full-u64 counter guards are Checked at source level; physical-machine acceptance wiring remains open.'},
 {'primitive':'u32 unsigned comparison/zero/sign','mathematics':'Checked','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'Full physical machine input decoding and use remain open.'},
 {'primitive':'conditional word selection','mathematics':'CheckedUnderBooleanConditionEncoding','actual_source':['control_source'],'actual_matrix':['control_actual_matrix'],'open':'The helper accepts raw u32 masks. Exact Boolean selection requires caller-enforced condition=0 or1; standalone control matrix does not enforce Boolean input4.'},
 {'primitive':'SHA256 complete compression','mathematics':'Checked','actual_source':['sha_source'],'actual_matrix':['sha_actual_matrix'],'open':'Streaming byte ingress, padded block framing and physical machine use remain separate.'},
 {'primitive':'four full range-checked u64 digest limbs','mathematics':'CheckedSchemasAndFull256BitInjection','evidence':['full_digest_port_schemas','digest_packing_math','packed_digest_matrix'],'open':'Standalone actual four-u64 digest matrix is Checked. Whole-K public claim ports and Nova endpoint connection remain open; SHA compression itself has eight u32 outputs.'},
 {'primitive':'canonical matrix integer/stream decoder','mathematics':'CheckedOriginalStrictParserRoundtrip','evidence':['matrix_binary_codec','sha_actual_matrix','control_actual_matrix'],'open':'A canonical decoded matrix still must equal the proved expected relation; no shape-only authority.'},
 {'primitive':'SHA message streaming/progress/padding/finalization','mathematics':'Checked','evidence':['hash_stream_and_word_control'],'open':'Actual source/circuit stream controller and authenticated byte supply are open.'},
 {'primitive':'canonical application record codecs, signed Int64/UTF8, identities','mathematics':'PreviouslyCheckedCodecAndIdentityModels','open':'Actual generated machine stream/record decoding and preimage use are open; native codec tests alone do not close them.'},
 {'primitive':'InitDone/Done/AttemptDone, counters, authenticated path/coverage/finalizer','mathematics':'PreviouslyCheckedAbstractMachineAndViewModels','open':'Physical bounded instruction refinement, actual whole machine Rust/matrix, all input/range/stream/finalizer constraints and release entrypoint binding are open.'},
]
result={'format_version':'core033.primitive-coverage-index.v1','derived_at':datetime.datetime.now(datetime.timezone.utc).isoformat(),'task':'T042','status':'InProgress','completed_tasks':len(re.findall(r'^- \[[Xx]\] T\d+',(feature/'tasks.md').read_text(),re.M)),'total_tasks':93,'receipts':index,'primitives':primitives,'file_binding_scope':'BoundCheckedValue binds the complete closed data value from a genuine Checked/fresh receipt to actual bytes under the ordinary pinned compiler/runtime and file I/O assumption. It is not a semantic theorem or native-evaluation axiom.', 'authority':'Derived navigation only. Original receipts and their exact theorem/input scopes are authoritative. Missing/pending evidence is not Checked.','release_relation_complete':False,'g1_pass':False}
(root/'t042-primitive-coverage.json').write_text(json.dumps(result,sort_keys=True,indent=2)+'\n')
print(json.dumps({'task':'T042','status':result['status'],'completed_tasks':result['completed_tasks'],'checked_fresh_receipts':sum(r['outcome']=='Checked' and r['fresh_kernel_replay'] for r in index.values()),'g1_pass':False}))
