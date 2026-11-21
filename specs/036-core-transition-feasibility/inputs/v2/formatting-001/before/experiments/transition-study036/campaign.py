"""Source-sensitive gates and the inherited whole-investigation budget."""
import time,json
from pathlib import Path
from artifact_io import digest,read,write_once
from bootstrap import validate_profile
from recorder import Ledger

def eligible(stage,g):
 if stage in {"S0","S5"}:return True
 if stage=="Q":return g.get("native_ready") is True
 if stage=="S1":return g.get("native_ready") is True and g.get("analysis_ready") is True
 if not(g.get("S1") is True and g.get("Q") is True):return False
 if stage in {"S2","S3"}:return stage=="S2" or g.get("S2") is True
 if stage=="S4":return g.get("S2") is True and g.get("S3") is True
 raise ValueError("UnknownStage")
def check_revision(expected,actual):
 if expected!=actual:raise ValueError("SourceRevisionChanged")
def budget_remaining(total,elapsed,reserve):return max(0,total-elapsed-reserve)
def context(session):
 s=read(session);validate_profile(s["profile"])
 Ledger(s["clock"]["started_ns"],s["clock"]["boot_id"],21600).remaining_ns(time.monotonic_ns(),Path("/proc/sys/kernel/random/boot_id").read_text().strip())
 return s


class WorkLedger:
    """Append-only operational facts, never serialized native authority.

    A hash chain detects byte edits, not semantic fraud. Callers must bind the
    work/source/tool inputs through the registered roots before execution.
    Restart always drops process-private authority. There is no feature clock.
    """
    STAGES = frozenset({'ENV','NATIVE','Q','DIAG','SESSIONS','COMPACT','REPRO','FINAL','ENGINEERING'})
    TERMINAL = frozenset({'succeeded','failed','resource_stopped','interrupted'})

    def __init__(self, root, work_id):
        from records import identifier
        from artifact_io import RootRegistry
        identifier(work_id)
        self.root = Path(root)
        if not self.root.is_absolute() or self.root.is_symlink():
            raise ValueError('V2LedgerRoot')
        self.root.mkdir(parents=True,exist_ok=True)
        self.repository = Path(__file__).resolve().parents[2]
        self.registry = RootRegistry({'work':self.root,'repository':self.repository},readonly=['repository'])
        self.work_id = work_id
        self.authority = 'unverified'
        self.events = []
        self.attempts = {}
        self.imported_receipts = {}
        self._head = '0'*64
        self._load()

    @staticmethod
    def _canonical(value):
        return json.dumps(value,sort_keys=True,separators=(',',':'),ensure_ascii=False,allow_nan=False).encode('utf-8')

    @staticmethod
    def _profile(profile):
        from records import u64
        if not isinstance(profile,dict) or set(profile) != {'wall_seconds','reserve_seconds'}:
            raise ValueError('V2AllocationFields')
        for value in profile.values():
            u64(value)
        if not 0 < profile['reserve_seconds'] < profile['wall_seconds']:
            raise ValueError('V2Allocation')
        return dict(profile)

    def _load(self):
        import hashlib
        from records import loads_v2, MANIFEST
        path = self.registry.path('work','events.jsonl')
        if not path.exists():
            return
        if path.stat().st_size > MANIFEST:
            raise ValueError('V2EventStreamBound')
        legacy_count=0;legacy_head=None
        legacy_path=self.registry.path('work','journal-legacy-context.json')
        if legacy_path.exists():
            from records import validate_v2_record,u64
            legacy=self.registry.read(self.registry.reference('work','journal-legacy-context.json'))
            validate_v2_record(legacy,extra_fields={'prefix_ref','prefix_count','prefix_head'})
            for ref in [legacy['specification_ref'],legacy['source_subject_ref'],*legacy['inputs']]:self.registry.verify(ref)
            prefix_path=self.registry.verify(legacy['prefix_ref'])
            if prefix_path.stat().st_size>MANIFEST:raise ValueError('V2LegacyPrefixBound')
            prefix=prefix_path.read_bytes()
            with path.open('rb') as original:
                if original.read(len(prefix))!=prefix:raise ValueError('V2LegacyJournalPrefixChanged')
            legacy_count=u64(legacy['prefix_count']);legacy_head=legacy['prefix_head']
            if len(prefix.splitlines())!=legacy_count:raise ValueError('V2LegacyPrefixCount')
        with path.open('rb') as stream:
            for index,line in enumerate(iter(lambda:stream.readline(4*1024**2+1),b'')):
                if index >= 20000 or not line.endswith(b'\n'):
                    raise ValueError('V2EventStreamIncomplete')
                event = loads_v2(line)
                if index<legacy_count:
                    if not isinstance(event,dict) or set(event)!={'format','work_id','sequence','previous_sha256','at_utc','event','sha256'}:
                        raise ValueError('V2LegacyEventFields')
                else:
                    from records import validate_v2_record
                    validate_v2_record(event,extra_fields={'sequence','previous_sha256','at_utc','event','sha256'})
                    for ref in [event['specification_ref'],event['source_subject_ref'],*event['inputs']]:self.registry.verify(ref)
                unsigned = {k:v for k,v in event.items() if k!='sha256'}
                if (event['format']!='core036.event.v2' or event['work_id']!=self.work_id
                    or type(event['sequence']) is not int or event['sequence']!=index
                    or event['previous_sha256']!=self._head
                    or hashlib.sha256(self._canonical(unsigned)).hexdigest()!=event['sha256']):
                    raise ValueError('V2EventChain')
                self._apply(event['event'])
                self.events.append(event)
                self._head = event['sha256']
                if index+1==legacy_count and self._head!=legacy_head:raise ValueError('V2LegacyPrefixHead')

    def _apply(self, event):
        from records import identifier, u64
        if not isinstance(event,dict) or not isinstance(event.get('kind'),str):
            raise ValueError('V2EventPayload')
        kind = event['kind']
        if kind=='declare':
            if set(event) != {'kind','attempt_id','stage','profile','subject','slots','predecessor','correction'}:
                raise ValueError('V2DeclarationFields')
            name = identifier(event['attempt_id'])
            if name!=f'a{len(self.attempts)+1:04d}' or name in self.attempts or event['stage'] not in self.STAGES:
                raise ValueError('V2DeclarationIdentity')
            self._profile(event['profile'])
            identifier(event['subject'])
            slots = event['slots']
            if not isinstance(slots,list) or len(slots)>20000:
                raise ValueError('V2ExpectedSlots')
            for slot in slots:
                identifier(slot)
            if len(set(slots))!=len(slots):
                raise ValueError('V2DuplicateSlot')
            predecessor = event['predecessor']
            if predecessor is not None:
                parent = self.attempts.get(predecessor)
                if (parent is None or parent['state']!='closed' or parent['outcome']=='succeeded'
                    or not isinstance(event['correction'],str) or not event['correction'].strip()
                    or (parent['profile']==event['profile'] and parent['subject']==event['subject'])):
                    raise ValueError('V2UncorrectedSuccessor')
                if parent['stage']!=event['stage'] or parent['slots']!=slots:
                    raise ValueError('V2SuccessorChangedWork')
            elif event['correction'] is not None:
                raise ValueError('V2UnexpectedCorrection')
            self.attempts[name] = {**event,'state':'declared'}
        elif kind=='start':
            if set(event) != {'kind','attempt_id','now_ns','boot_id'}:
                raise ValueError('V2StartFields')
            item = self.attempts.get(event['attempt_id'])
            if item is None or item['state']!='declared' or any(a['state']=='running' for a in self.attempts.values()):
                raise ValueError('V2ConcurrentOrRepeatedStart')
            u64(event['now_ns']);identifier(event['boot_id'])
            item.update(state='running',started_ns=event['now_ns'],boot_id=event['boot_id'])
        elif kind=='close':
            if set(event) != {'kind','attempt_id','now_ns','boot_id','outcome','reason','closed_tree','intervals'}:
                raise ValueError('V2CloseFields')
            item = self.attempts.get(event['attempt_id'])
            if item is None or item['state']!='running' or event['closed_tree'] is not True:
                raise ValueError('V2UnclosedAttempt')
            u64(event['now_ns'])
            if event['boot_id']!=item['boot_id'] or event['now_ns']<item['started_ns']:
                raise ValueError('V2ClockProvenanceChanged')
            if event['outcome'] not in self.TERMINAL or (event['outcome']!='succeeded' and not event['reason']):
                raise ValueError('V2AttemptOutcome')
            duration = event['now_ns']-item['started_ns']
            cursor = 0
            if not isinstance(event['intervals'],list) or not event['intervals']:
                raise ValueError('V2ExclusiveIntervals')
            for span in event['intervals']:
                if not isinstance(span,dict) or set(span)!={'kind','start_ns','end_ns'} or span['kind'] not in {'stage','controller','cleanup','unclassified'}:
                    raise ValueError('V2IntervalFields')
                start,end = u64(span['start_ns']),u64(span['end_ns'])
                if start!=cursor or not start<=end<=duration:
                    raise ValueError('V2IntervalOverlapOrGap')
                cursor = end
            if cursor!=duration:
                raise ValueError('V2UnaccountedAttemptTime')
            u64(sum(a.get('duration_ns') or 0 for a in self.attempts.values())+duration)
            item.update(state='closed',finished_ns=event['now_ns'],duration_ns=duration,
                        outcome=event['outcome'],reason=event['reason'],intervals=event['intervals'])
        elif kind=='import_receipt':
            from records import validate_ref_v2
            if set(event)!={'kind','receipt_ref','start_monotonic_ns','wall_ns','boot_id','scope'}:
                raise ValueError('V2ImportedReceiptFields')
            validate_ref_v2(event['receipt_ref'])
            key = event['receipt_ref']['sha256']
            if key in self.imported_receipts:
                raise ValueError('V2RepeatedReceiptImport')
            u64(event['start_monotonic_ns']);u64(event['wall_ns']);identifier(event['boot_id'])
            if not isinstance(event['scope'],str) or not event['scope']:
                raise ValueError('V2ImportScope')
            self.imported_receipts[key] = event
        elif kind=='bind_declaration':
            from records import validate_ref_v2
            if set(event)!={'kind','attempt_id','declaration_ref'}:
                raise ValueError('V2DeclarationBindingFields')
            item=self.attempts.get(event['attempt_id'])
            if item is None or item['state']!='declared' or 'declaration_ref' in item:
                raise ValueError('V2DeclarationAlreadyBound')
            validate_ref_v2(event['declaration_ref'])
            item['declaration_ref']=event['declaration_ref']
        elif kind=='close_unstarted':
            if set(event)!={'kind','attempt_id','reason','observed_ns','boot_id'}:
                raise ValueError('V2PreflightClosureFields')
            item=self.attempts.get(event['attempt_id'])
            if item is None or item['state']!='declared' or not isinstance(event['reason'],str) or not event['reason'].strip():
                raise ValueError('V2PreflightClosureState')
            u64(event['observed_ns']);identifier(event['boot_id'])
            item.update(state='closed',outcome='failed',reason=event['reason'],duration_ns=None,
                duration_unavailable_reason='Preflight rejected before first child; original preflight duration was not captured and is not fabricated as zero',
                observed_ns=event['observed_ns'],observed_boot_id=event['boot_id'])
        else:
            raise ValueError('V2UnknownEvent')

    def _append(self, payload):
        import copy, datetime, fcntl, hashlib, os
        # Validate the transition before touching the stream. Restore the
        # in-memory state if append fails, and reject stale concurrent writers.
        before = copy.deepcopy(self.attempts)
        previous_imports = copy.deepcopy(self.imported_receipts)
        self._apply(payload)
        path = self.registry.path('work','events.jsonl',writing=True)
        try:
            with path.open('a+b') as stream:
                fcntl.flock(stream,fcntl.LOCK_EX)
                stream.seek(0)
                actual = stream.read(32*1024**2+1)
                expected = b''.join(self._canonical(e)+b'\n' for e in self.events)
                if actual!=expected:
                    raise ValueError('V2ConcurrentLedgerWriter')
                event = {'format':'core036.event.v2','work_id':self.work_id,
                    'sequence':len(self.events),'previous_sha256':self._head,
                    'at_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'event':payload}
                source_bytes=Path(__file__).read_bytes()
                source_sha=hashlib.sha256(source_bytes).hexdigest()
                name='journal-sources/'+source_sha+'.py'
                if not self.registry.path('work',name).exists():
                    source_ref=self.registry.write('work',name,source_bytes)
                else:
                    source_ref=self.registry.reference('work',name)
                    if source_ref['sha256']!=source_sha:raise ValueError('V2JournalSourceSnapshot')
                specification=self.registry.reference('repository','specs/036-core-transition-feasibility/spec.md')
                refs=[payload[key] for key in ('receipt_ref','declaration_ref') if key in payload]
                for ref in refs:self.registry.verify(ref)
                event.update(record_id=f'event-{len(self.events):05d}',specification_ref=specification,
                    source_subject_ref=source_ref,inputs=refs,product_adoption='unactivated',
                    outcome={'operational':'closed','acceptance':'blocked'},
                    reason='Operational journal facts only; no native authority or feature completion',blocking_ref=specification)
                event['sha256'] = hashlib.sha256(self._canonical(event)).hexdigest()
                raw = self._canonical(event)+b'\n'
                if len(raw)>4*1024**2 or len(actual)+len(raw)>32*1024**2 or len(self.events)>=20000:
                    raise ValueError('V2EventStreamBound')
                stream.write(raw);stream.flush();os.fsync(stream.fileno())
        except BaseException:
            self.attempts = before
            self.imported_receipts = previous_imports
            raise
        self.events.append(event)
        self._head = event['sha256']

    def declare(self, stage, *, profile, subject, slots, predecessor=None, correction=None):
        name = f'a{len(self.attempts)+1:04d}'
        self._append({'kind':'declare','attempt_id':name,'stage':stage,
            'profile':self._profile(profile),'subject':subject,'slots':list(slots),
            'predecessor':predecessor,'correction':correction})
        return name

    def start(self, attempt_id, *, now_ns, boot_id):
        self._append({'kind':'start','attempt_id':attempt_id,'now_ns':now_ns,'boot_id':boot_id})

    def close(self, attempt_id, *, now_ns, boot_id, outcome, closed_tree, reason=None, intervals=None):
        item = self.attempts.get(attempt_id)
        if item is None:
            raise ValueError('V2MissingAttempt')
        if intervals is None:
            # Explicit unknown attribution, never pretend all controller time
            # was measured execution. Higher-level controller supplies spans.
            duration = now_ns-item.get('started_ns',now_ns)
            intervals = [{'kind':'unclassified','start_ns':0,'end_ns':duration}]
        self._append({'kind':'close','attempt_id':attempt_id,'now_ns':now_ns,
            'boot_id':boot_id,'outcome':outcome,'reason':reason,
            'closed_tree':closed_tree,'intervals':intervals})

    def successor(self, attempt_id, *, correction, profile, subject=None):
        parent = self.attempts.get(attempt_id)
        if parent is None:
            raise ValueError('V2MissingPredecessor')
        return self.declare(parent['stage'],profile=profile,
            subject=parent['subject'] if subject is None else subject,slots=parent['slots'],
            predecessor=attempt_id,correction=correction)

    def active_ns(self):
        return sum(a.get('duration_ns') or 0 for a in self.attempts.values()) + sum(r['wall_ns'] for r in self.imported_receipts.values())

    def unknown_duration_attempts(self):
        return [name for name,item in self.attempts.items() if item['state']=='closed' and item.get('duration_ns') is None]

    def calendar_gaps(self):
        """UTC observations stay separate from closed monotonic durations."""
        import datetime
        periods=[];starts={}
        for event in self.events:
            payload=event['event'];kind=payload['kind']
            if kind=='start':
                starts[payload['attempt_id']]=(event['at_utc'],payload['boot_id'])
            elif kind=='close':
                begin,boot=starts[payload['attempt_id']]
                periods.append((begin,event['at_utc'],boot,payload['attempt_id']))
            elif kind=='import_receipt':
                raw=self.registry.read(payload['receipt_ref'])
                if 'started_at_utc' in raw and 'finished_at_utc' in raw:
                    periods.append((raw['started_at_utc'],raw['finished_at_utc'],raw['boot_id'],payload['receipt_ref']['sha256']))
        parsed=[]
        for begin,finish,boot,name in periods:
            a,b=datetime.datetime.fromisoformat(begin),datetime.datetime.fromisoformat(finish)
            if a.tzinfo is None or b.tzinfo is None:raise ValueError('V2CalendarTimezone')
            parsed.append((a,b,boot,name))
        parsed.sort(key=lambda p:p[0]);gaps=[]
        for previous,current in zip(parsed,parsed[1:]):
            delta=current[0]-previous[1]
            ns=(delta.days*86400+delta.seconds)*10**9+delta.microseconds*1000
            gaps.append({'from':previous[3],'to':current[3],'from_boot_id':previous[2],
                'to_boot_id':current[2],'value_ns':ns if ns>=0 else None,
                'reason_if_unavailable':None if ns>=0 else 'Recorded enclosures overlap or UTC moved backwards; not additive',
                'scope':'UTC calendar observation only; never active compute'})
        return gaps

    def close_unstarted(self, attempt_id, *, reason, observed_ns, boot_id):
        self._append({'kind':'close_unstarted','attempt_id':attempt_id,'reason':reason,'observed_ns':observed_ns,'boot_id':boot_id})

    def import_receipt(self, receipt_ref, *, registry, scope):
        from records import u64
        raw = registry.read(receipt_ref)
        if (raw.get('format') not in {'core035.bounded.v1','core036.resource.v2'}
            or raw.get('tree_empty') is not True or raw.get('group_empty') is not True
            or raw.get('group_id') is None):
            raise ValueError('V2UnclosedImportedReceipt')
        u64(raw.get('start_monotonic_ns'));u64(raw.get('wall_ns'))
        self._append({'kind':'import_receipt','receipt_ref':receipt_ref,
            'start_monotonic_ns':raw['start_monotonic_ns'],'wall_ns':raw['wall_ns'],
            'boot_id':raw['boot_id'],'scope':scope})

    def bind_declaration(self, attempt_id, declaration_ref, *, registry):
        value=registry.read(declaration_ref)
        item=self.attempts.get(attempt_id)
        if (item is None or value['record_id']!=attempt_id or value['stage']!=item['stage']
            or value['source_subject_ref']['sha256']!=item['subject'] or value['slots']!=item['slots']):
            raise ValueError('V2DeclarationDoesNotMatchLedger')
        self._append({'kind':'bind_declaration','attempt_id':attempt_id,'declaration_ref':declaration_ref})

    def remaining_ns(self, attempt_id, *, now_ns, boot_id):
        from records import u64
        item = self.attempts.get(attempt_id)
        if item is None or item['state']!='running':
            raise ValueError('V2AttemptNotRunning')
        u64(now_ns)
        if boot_id!=item['boot_id'] or now_ns<item['started_ns']:
            raise ValueError('V2ClockProvenanceChanged')
        budget = (item['profile']['wall_seconds']-item['profile']['reserve_seconds'])*10**9
        return max(0,budget-(now_ns-item['started_ns']))

    def feature_complete(self):
        # Operational facts cannot satisfy the separate final evaluator. This
        # API must never grow a report-controlled shortcut to native authority.
        return False
