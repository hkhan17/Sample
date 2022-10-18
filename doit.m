import matlab.unittest.TestRunner
import matlabtest.coder.plugins.GeneratedCodeCoveragePlugin
import matlab.unittest.plugins.codecoverage.CoberturaFormat

suite = testsuite('tDemo_myAdd.m');

runner = TestRunner.withTextOutput;
reportFormat = CoberturaFormat("cobertura_custom.xml");
runner.addPlugin(GeneratedCodeCoveragePlugin(Producing=reportFormat));

runner.run(suite);
