classdef tDemo_myAdd < matlabtest.coder.TestCase
    
    methods(Test)
        function test1(testCase)
            % Generates code and SIL executable
            %
            % Note: The TestCase sets the VerificationMode to "SIL" by default
            % in case of lib/dll targets
            buildResults = testCase.build('myAdd.m', Inputs={10,5}, ...
                Configuration='lib');

            % Execute the SIL executable with specified inputs
            executionResults = testCase.execute(buildResults);

            % Verify that the execution matches the normal MATLAB run
            testCase.verifyExecutionMatchesMATLAB(executionResults);
        end
    end  
end
