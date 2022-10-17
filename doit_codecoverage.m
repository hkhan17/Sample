import matlab.unittest.TestRunner
import matlab.unittest.plugins.CodeCoveragePlugin
import matlabtest.coder.plugins.GeneratedCodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoberturaFormat

suite = testsuite('tDemo_myAdd.m');

runner = TestRunner.withTextOutput;
reportFormat1 = CoberturaFormat("myCobertura.xml");
runner.addPlugin(CodeCoveragePlugin.forFile("myAdd.m", Producing=reportFormat1));
runner.addPlugin(GeneratedCodeCoveragePlugin);

runner.run(suite);
