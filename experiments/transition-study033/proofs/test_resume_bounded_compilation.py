"""Driver controls only: mocked tool results never establish theorem acceptance."""
import json
from pathlib import Path
import sys
import tempfile
import unittest
from unittest.mock import patch

import resume_bounded_compilation as resume


class ResumeControls(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.base = Path(self.temporary.name)
        self.previous = self.base/'previous'
        self.sources = self.base/'sources'
        self.out = self.base/'new'
        for path in [self.previous/'compiled', self.previous/'source-snapshot', self.sources]:
            path.mkdir(parents=True)
        self.targets = self.base/'targets.json'
        self.targets.write_text(json.dumps({'First':['First.a'], 'Last':['Last.b']}))
        for module in ['First', 'Last']:
            (self.sources/(module+'.lean')).write_text('-- immutable '+module+'\n')
            (self.previous/'compiled'/(module+'.olean')).write_bytes(module.encode())
        self.record_success('First')

    def record_success(self, module):
        source = self.sources/(module+'.lean')
        compiled = self.previous/'compiled'/(module+'.olean')
        (self.previous/'source-snapshot'/source.name).write_bytes(source.read_bytes())
        (self.previous/(module+'.compile.command.json')).write_text(json.dumps({
            'argv':['lean','-o',str(compiled),str(source)], 'exit_code':0,
            'timed_out':False,
        }))

    def run_driver(self, check, extra=()):
        argv = ['resume', '--previous',str(self.previous),'--sources',str(self.sources),
                '--targets',str(self.targets),'--out',str(self.out),*extra]
        with patch.object(sys,'argv',argv), patch.object(resume.driver,'check_modules',check):
            resume.main()

    def test_changed_successful_source_is_rejected_before_checker(self):
        (self.sources/'First.lean').write_text('-- changed\n')
        with self.assertRaisesRegex(resume.driver.ProofError,'different actual prefix source'):
            self.run_driver(lambda *args,**kwargs:self.fail('checker must not run'))

    def test_unreceipted_binary_is_excluded_and_all_targets_retained(self):
        def check(inputs,targets,out,**kwargs):
            self.assertEqual(targets, {'Last':['Last.b'], 'ResumedCompleteInventory':['First.a']})
            self.assertTrue((inputs/'compiled-seeds/First.olean').exists())
            self.assertFalse((inputs/'compiled-seeds/Last.olean').exists())
            self.assertEqual((inputs/'ResumedCompleteInventory.lean').read_text(),
                             'import First\nimport Last\n')
            out.mkdir()
            return {'outcome':'Checked','fresh_kernel_replay':True,
                    'theorems':[{'target':'Last.b'},{'target':'First.a'}]}
        self.run_driver(check)
        receipt = json.loads((self.out/'receipt.json').read_text())
        self.assertEqual(receipt['targets'],2)
        self.assertFalse(receipt['g1_pass'])

    def test_missing_target_from_checker_is_rejected(self):
        def check(inputs,targets,out,**kwargs):
            out.mkdir()
            return {'outcome':'Checked','fresh_kernel_replay':True,
                    'theorems':[{'target':'Last.b'}]}
        with self.assertRaisesRegex(resume.driver.ProofError,'changed complete theorem inventory'):
            self.run_driver(check)
        self.assertFalse((self.out/'receipt.json').exists())

    def test_replacement_cannot_change_a_successful_compilation(self):
        replacements = self.base/'replacements'
        replacements.mkdir()
        (replacements/'First.lean').write_text('-- different successful source\n')
        with self.assertRaisesRegex(resume.driver.ProofError,'replacement attempts to alter successful'):
            self.run_driver(lambda *args,**kwargs:self.fail('checker must not run'),
                            ['--replacements',str(replacements)])

    def test_interrupted_command_receipt_forces_recompilation(self):
        (self.previous/'First.compile.command.json').write_bytes(b'')
        def check(inputs,targets,out,**kwargs):
            self.assertEqual(targets['First'],['First.a'])
            self.assertFalse((inputs/'compiled-seeds/First.olean').exists())
            self.assertFalse((inputs/'compiled-seeds/Last.olean').exists())
            out.mkdir()
            return {'outcome':'Checked','fresh_kernel_replay':True,
                    'theorems':[{'target':'First.a'},{'target':'Last.b'}]}
        self.run_driver(check)


if __name__ == '__main__':
    unittest.main()
