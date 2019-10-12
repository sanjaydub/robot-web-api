# robot-web-api
Using Robot framework for Web and API automation

<b>Libs used</b> :<br>
RFW in-build libs - String, Collection, XML, Operating System etc<br>
Selenium Library - to interect with web application<br>
Request Library - to interect with rest services<br>
JSONLibrary - to read JSON response from REST API using JSON path<br>

<b>How to execute</b>:<br>
Using robot -->  <i> robot   TestSsuite1.robot</i><br>
Using robot with group/tag-->  <i> robot   -i  group_name  TestSsuite1.robot</i><br>
Using python -->  <i> python  -m  robot   TestSuite1.robot </i><br>
Using python with group/tag -->  <i> python -m  robot  -i  REST  TestSuite1.robot </i><br>

<B>Using Pipenv for Dpendencies management :</b><br>
Command to run script in pipenv --> pipenv run python -m robot Suites\TestSuite1.robot

<b>InteliJ Run config Setting</b>: If you want to run robot test script/suite from inteliJ<br>
![alt text](https://raw.githubusercontent.com/sanjaydub/robot-web-api/master/inteliJRunConfigSettings.jpg)


<b>Robot Framework - Results</b><br>
Result.html - Test execution result summary with filters
![alt text](https://raw.githubusercontent.com/sanjaydub/robot-web-api/master/RFW_Report.jpeg)<br><br>
Log.html - Logs for every step
![alt text](https://raw.githubusercontent.com/sanjaydub/robot-web-api/master/RFW_Log.jpeg)
