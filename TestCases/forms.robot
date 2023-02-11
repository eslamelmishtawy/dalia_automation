*** Settings ***
Resource    ../CommonResources/resources.robot

*** Test Cases ***
Form Submission In PartenerPersonal CareerSite
    Open CareerSite
    Check CareerSite Page Is Displayed
    Click On Form Button In CareerSite
    Check Form Is Displayed
    Enter First Name
    Enter Last Name
    Click On Next Button In Forms
    Enter Email
    Enter Phone Number
    Click On Next Button In Forms
    Enter Job Title
    Enter City
    Select Job Category From Dropdown List In The Form
    Click Submit Button
    Check Form Is Submitted
    