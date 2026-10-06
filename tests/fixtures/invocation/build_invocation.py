"""Direct wire fixtures for feature 012, independent of any binding or DSL.

Regenerate with python3 tests/fixtures/invocation/build_invocation.py.
--output writes an isolated copy for determinism testing. Existing goldens are
never generated from the new invocation implementation.
"""
import argparse
import json
import hashlib
import subprocess
from pathlib import Path

LOC = {"file": "ledger", "line": 1}
INT, STR = {"t": "int"}, {"t": "string"}
STATUS = {"t": "enum", "name": "Status"}


def write(root, path, value):
    target = root / path
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_text(json.dumps(value, sort_keys=True, separators=(",", ":"), ensure_ascii=False))


def lit(ty, value):
    return {"op": "lit", "type": ty, "value": value, "loc": LOC}


def par(name):
    return {"op": "param", "param": name, "loc": LOC}


def fld(name, field):
    return {"op": "field", "param": name, "field": field, "loc": LOC}


def op(name, *args):
    return {"op": name, "args": list(args), "loc": LOC}


def param(name, entity=None, ty=None):
    return {"name": name, "role": "state" if entity else "input",
            "type": {"t": "entity", "name": entity} if entity else ty}


def assignment(name, field, value):
    return {"target": {"param": name, "field": field}, "value": value, "loc": LOC}


def action(name, params, effects, pre=()):
    return {"name": name, "params": params, "effects": effects, "loc": LOC,
            "preconditions": [{"expr": p, "loc": LOC} for p in pre], "postconditions": []}


def read(name, params, body):
    return {"name": name, "params": params, "body": {"value": body}, "loc": LOC}


def ledger():
    register = action("register_customer", [param("customer_id", ty={"t":"id","entity":"Customer"}),
                       param("name", ty=STR)], [{"create":"Customer", "id":par("customer_id"),
                       "fields":{"name":par("name"),"status":lit(STATUS,"ACTIVE")},"loc":LOC}])
    select = {"op":"select","entity":"Customer","loc":LOC}
    return {
        "ir_version":"0.7", "enums":[{"name":"Status","values":["ACTIVE","SUSPENDED"],"loc":LOC}],
        "nominals":[], "derived":[],
        "entities":[
            {"name":"Customer","loc":LOC,"fields":[{"name":n,"type":t,"loc":LOC} for n,t in [("name",STR),("status",STATUS)]]},
            {"name":"Account","loc":LOC,"fields":[{"name":n,"type":t,"loc":LOC} for n,t in [("owner",{"t":"ref","entity":"Customer"}),("balance",INT)]]}],
        "constraints":[{"name":"balance_nonnegative","entity":"Account","param":"a","loc":LOC,
                        "body":op("ge",fld("a","balance"),lit(INT,0))}],
        "invariants":[{"name":"customer_names_unique","loc":LOC,
                       "body":{"op":"unique","args":[select],"param":"c","body":fld("c","name"),"loc":LOC}}],
        "actions":[register,
            action("suspend_customer",[param("customer","Customer")],[assignment("customer","status",lit(STATUS,"SUSPENDED"))]),
            action("transfer",[param("from_","Account"),param("to","Account"),param("amount",ty=INT)],
                   [assignment("from_","balance",op("sub",fld("from_","balance"),par("amount"))),
                    assignment("to","balance",op("add",fld("to","balance"),par("amount")))],
                   [op("ge",par("amount"),lit(INT,0)),op("ge",fld("from_","balance"),par("amount")),
                    op("le",fld("to","balance"),op("sub",lit(INT,9223372036854775807),par("amount")))]),
            action("settle",[param(n,"Account") for n in ("a","b","c")],
                   [assignment(n,"balance",lit(INT,0)) for n in ("a","b","c")]),
            action("check_standing",[param("customer","Customer")],[],[op("eq",fld("customer","status"),lit(STATUS,"ACTIVE"))])],
        "reads":[read("customer_count",[],op("count",select)),
            {"name":"customer_summary","loc":LOC,"params":[param("customer","Customer")],
             "body":{"project":{"over":par("customer"),"param":"c","items":[{"field":"name"},{"field":"status"}]}}},
            read("pair_total",[param("a","Account"),param("b","Account")],op("add",fld("a","balance"),fld("b","balance"))),
            read("triple_total",[param(n,"Account") for n in ("a","b","c")],op("add",op("add",fld("a","balance"),fld("b","balance")),fld("c","balance")))],
    }


def snapshot():
    customers = [{"id":"c1","name":"Ada","status":"ACTIVE"},{"id":"c2","name":"Bo","status":"ACTIVE"}]
    accounts = [{"id":n,"owner":c,"balance":v} for n,c,v in [("a1","c1",100),("a2","c2",50),("a3","c1",25)]]
    entities = [{"entity":t,"value":v} for t,vs in [("Customer",customers),("Account",accounts)] for v in vs]
    return {"format":"behavior.snapshot.v1","data_version":"test:1","entities":entities,
            "facts":{"universe":[{"entity":"Customer","members":customers},{"entity":"Account","members":accounts}],
                     "identities":[{"entity":"Customer","id":"c3","used":False}]}}


def invocations():
    def identity(entity, key): return {"entity":entity,"id":key}
    def request(capability, bindings, input=None):
        return {"format":"behavior.invocation.v1","capability":capability,
                "bindings":bindings,"input":input or {},"context":{}}
    customer = {"customer":identity("Customer","c1")}
    cases = {
        "register":request("register_customer",{}, {"customer_id":"c3","name":"Cy"}),
        "suspend":request("suspend_customer",customer),
        "transfer":request("transfer",{"from_":identity("Account","a1"),"to":identity("Account","a2")},{"amount":20}),
        "settle3":request("settle",{name:identity("Account",key) for name,key in [("a","a1"),("b","a2"),("c","a3")]}),
        "check_standing":request("check_standing",customer),
        "summary":request("customer_summary",customer),
        "pair_total":request("pair_total",{"a":identity("Account","a1"),"b":identity("Account","a2")}),
        "customer_count":request("customer_count",{}),
        "suspend_unknown":request("suspend_customer",{"customer":identity("Customer","zz")}),
        "summary_unknown":request("customer_summary",{"customer":identity("Customer","zz")}),
        "suspend_wrongtype":request("suspend_customer",{"customer":identity("Account","a1")}),
        "summary_wrongtype":request("customer_summary",{"customer":identity("Account","a1")}),
        "transfer_alias":request("transfer",{"from_":identity("Account","a1"),"to":identity("Account","a1")},{"amount":20}),
    }
    return cases


def tagged(tag, value):
    text=json.dumps(value,sort_keys=True,separators=(",",":"),ensure_ascii=False).encode()
    return "sha256:"+hashlib.sha256(tag.encode()+b"\0"+text).hexdigest()


def intents():
    source=invocations()
    pairs={'register_no_bindings':'register','suspend_one':'suspend','transfer_two':'transfer',
           'summary_read':'summary','unknown_identity':'suspend_unknown','wrong_type':'suspend_wrongtype',
           'missing_binding':'suspend','extra_binding':'suspend','unknown_capability':'suspend',
           'with_state':'suspend','with_targets':'suspend','with_context':'suspend','with_metadata':'suspend'}
    import copy
    cases={}
    for name,base in pairs.items():
        value=copy.deepcopy(source[base]); value.pop('context')
        value['format']='behavior.capability_intent.v1'
        if name=='missing_binding': value['bindings']={}
        if name=='extra_binding': value['bindings']['extra']={'entity':'Customer','id':'c2'}
        if name=='unknown_capability': value['capability']='does_not_exist'
        if name=='with_state': value['state']={'customer':{'id':'c1','name':'Fake','status':'ACTIVE'}}
        if name=='with_targets': value['targets']={'customer':'c1'}
        if name=='with_context': value['context']={'secret':'caller'}
        if name=='with_metadata': value['metadata']={'conversation':'t-42'}
        cases[name]=value
    return cases


def golden(root, request, behavior):
    """Independent envelope oracle; only the existing eval/read CLI supplies inner records."""
    module=ledger(); snap=snapshot()
    def cli(*args):
        result=subprocess.run([behavior,*map(str,args)],capture_output=True,text=True)
        if result.returncode not in (0,1,2,3):
            raise RuntimeError(result.stderr)
        text=result.stdout.strip()
        return text if text.startswith('sha256:') else json.loads(text)
    wire=root/'modules/ledger.json'
    capability=next((a for a in module['actions']+module['reads'] if a['name']==request['capability']),None)
    kind=('action' if any(a['name']==request['capability'] for a in module['actions']) else 'read') if capability else None
    values={(e['entity'],e['value']['id']):e['value'] for e in snap['entities']}
    state={}; binding_facts=[]; problems=[]; seen=set()
    if not capability:
        problems.append({'stage':'DECODE','code':'UNKNOWN_CAPABILITY','path':'capability',
            'message':f"unknown capability `{request['capability']}`"})
    for param in capability['params'] if capability else []:
        if param['role']!='state': continue
        if param['name'] not in request['bindings']:
            problems.append({'stage':'BINDING','code':'MISSING_BINDING','param':param['name'],
                'expected':param['type']['name'],'path':f"bindings.{param['name']}",
                'message':f"binding `{param['name']}`: MISSING_BINDING"})
            continue
        identity=request['bindings'][param['name']]
        key=(identity['entity'],identity['id'])
        expected=param['type']['name']
        status='wrong_type' if identity['entity']!=expected else 'unknown' if key not in values else 'bound'
        binding_facts.append({'param':param['name'],'expected':expected,'requested':identity,'status':status})
        reason={'wrong_type':'WRONG_ENTITY_TYPE','unknown':'UNKNOWN_BINDING'}.get(status)
        if status=='bound':
            state[param['name']]=values[key]
            if key in seen: reason='STATE_ALIAS_NOT_ALLOWED'
            seen.add(key)
        if reason:
            problems.append({'stage':'BINDING','code':'INVALID_BINDING','reason':reason,
                'param':param['name'],'expected':expected,'requested':identity,
                'path':f"bindings.{param['name']}",'message':f"binding `{param['name']}`: {reason}"})
    if capability:
        names={p['name'] for p in capability['params']}
        for name,identity in request['bindings'].items():
            if name not in names:
                problems.append({'stage':'BINDING','code':'EXTRA_BINDING','param':name,'requested':identity,
                    'path':f'bindings.{name}','message':f'binding `{name}`: EXTRA_BINDING'})
    envelope={'format':'behavior.invocation_record.v1','capability':request['capability'],'kind':kind,
        'behavior_version':cli('version',wire),'schema':cli('schema-hash',wire),
        'data_version':snap['data_version'],'requested_bindings':request['bindings'],
        'input':request['input'],'context':request['context'],'binding_facts':binding_facts}
    if problems:
        ranks={'MISSING_BINDING':0,'EXTRA_BINDING':1,'INVALID_BINDING':2}
        problems.sort(key=lambda p:(ranks.get(p['code'],-1),p['path']))
        envelope['outcome']={'kind':'pre_evaluation_refusal','stage':problems[0]['stage'],'problems':problems}
    else:
        legacy={'data_version':snap['data_version'],'state':state,'input':request['input'],
                'context':request['context'],'facts':snap['facts']}
        legacy['action' if kind=='action' else 'read']=request['capability']
        import tempfile
        with tempfile.TemporaryDirectory() as temp:
            legacy_path=Path(temp)/'request.json'
            legacy_path.write_text(json.dumps(legacy))
            record=cli('eval' if kind=='action' else 'read',wire,legacy_path)
        identity=tagged('behavior.transition.v1',record) if kind=='action' else record['record_id']
        envelope['outcome']={'kind':'evaluated','record_kind':'decision' if kind=='action' else 'read',
                             'record_id':identity,'record':record}
    envelope['record_id']='invocation:'+tagged('behavior.invocation_record.v1',envelope)
    return envelope


def intent_golden(root, intent, behavior):
    request={k:v for k,v in intent.items() if k in ('capability','bindings','input')}
    request.update(format='behavior.invocation.v1',context={})
    envelope=golden(root,request,behavior)
    codes={'state':'STATE_NOT_ALLOWED','targets':'LEGACY_TARGETS','context':'CONTEXT_FROM_HOST'}
    problems=[{'stage':'DECODE','code':code,'path':key,'message':f'unexpected document key `{key}`'}
              for key,code in codes.items() if key in intent]
    if problems:
        envelope['outcome']={'kind':'pre_evaluation_refusal','stage':'DECODE','problems':problems,
            'decode_evidence':{'source_kind':'intent','document':intent}}
        # Decode precedes existence lookup: forbidden fields never reach resolution.
        envelope['binding_facts']=[]
    if 'metadata' in intent: envelope['intent_metadata']=intent['metadata']
    envelope.pop('record_id')
    envelope['record_id']='invocation:'+tagged('behavior.invocation_record.v1',envelope)
    return envelope


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=Path(__file__).resolve().parent)
    parser.add_argument("--goldens", action="store_true",help="use only legacy eval/read to produce independent expected envelopes")
    parser.add_argument("--behavior",default="target/debug/behavior")
    args = parser.parse_args()
    root = args.output
    write(root,"modules/ledger.json",ledger())
    write(root,"snapshots/s1.json",snapshot())
    write(root,"context.json",{})
    for name,request in invocations().items():
        write(root,f'invocations/{name}.json',request)
        if args.goldens:
            write(root,f'records/{name}.expected.json',golden(root,request,args.behavior))
    for name,intent in intents().items():
        write(root,f'intents/{name}.json',intent)
        if args.goldens:
            write(root,f'intent-records/{name}.expected.json',intent_golden(root,intent,args.behavior))


if __name__ == "__main__":
    main()
