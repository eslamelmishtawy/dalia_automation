*** Settings ***
Resource    ../resources.robot
Library    OperatingSystem

*** Variables ***
${xpath_dalia_form_container}    //*[@class='dalia-form-holder']
${shadowdom_dalia_form_holder}    dom:document.querySelector(".dalia-form-holder").shadowRoot.querySelector
${shadowdom_dalia_form}    dom:document.querySelector(".dalia-form-holder").shadowRoot.querySelector(".dalia-form")
${shadowdom_first_name}    ${shadowdom_dalia_form_holder}("[id$='first_name']")
${shadowdom_last_name}    ${shadowdom_dalia_form_holder}("[id$='last_name']")
${shadowdom_next_button}    ${shadowdom_dalia_form_holder}("[class*='btn-wizard-nav-next']")
${shadowdom_email}    ${shadowdom_dalia_form_holder}("[id$='email']")
${shadowdom_phone}    ${shadowdom_dalia_form_holder}("[id$='phone']")
${shadowdom_job_title}    ${shadowdom_dalia_form_holder}("[name*='job_title']")
${shadowdom_city}    ${shadowdom_dalia_form_holder}(".mapboxgl-ctrl-geocoder--input")
${shadowdom_select_city}    ${shadowdom_dalia_form_holder}("[class='mapboxgl-ctrl-geocoder--suggestion']")
${shadowdom_job_category}    ${shadowdom_dalia_form_holder}("[name*='client_category1']")
${shadowdom_submit}    ${shadowdom_dalia_form_holder}("[ref*='submit']")
${shadowdom_dalia_thanks}    ${shadowdom_dalia_form_holder}("[class=dalia-thanks]")

*** Keywords ***
Check Form Is Displayed
    Wait Until Page Contains Element    ${shadowdom_dalia_form}

Enter First Name
    Wait Until Page Contains Element    ${shadowdom_first_name}
    Input Text    ${shadowdom_first_name}    Automation

Enter Last Name
    Wait Until Page Contains Element    ${shadowdom_last_name}
    Input Text    ${shadowdom_last_name}    Test

Click On Next Button In Forms
    Wait Until Page Contains Element    ${shadowdom_next_button}
    Click Element    ${shadowdom_next_button}

Enter Email
    ${datetime}    Get Current Date    result_format=%d%m%Y%H%M%S
    Wait Until Page Contains Element    ${shadowdom_email}
    Input Text    ${shadowdom_email}    ${datetime}@dalia.com

Enter Phone Number
    Wait Until Page Contains Element    ${shadowdom_phone}
    Input Text    ${shadowdom_phone}    12345678989

Enter Job Title
    Wait Until Page Contains Element    ${shadowdom_job_title}
    Input Text    ${shadowdom_job_title}    Account Manager

Enter City
    Wait Until Page Contains Element    ${shadowdom_city}
    Input Text    ${shadowdom_city}    New York City, NY
    Wait Until Page Contains Element   ${shadowdom_select_city}
    Click Element    ${shadowdom_select_city}


Select Job Category From Dropdown List In The Form
    Wait Until Page Contains Element    ${shadowdom_job_category}
    Select From List By Index    ${shadowdom_job_category}    2

Click Submit Button
    Wait Until Page Contains Element    ${shadowdom_submit}
    Click Element    ${shadowdom_submit}

Check Form Is Submitted
    Wait Until Page Contains Element    ${shadowdom_dalia_thanks}
