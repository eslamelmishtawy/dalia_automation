*** Settings ***
Resource    ../resources.robot

*** Variables ***
${shadowdom_dalia_form_holder}    dom:document.querySelector(".dalia-form-holder").shadowRoot.querySelector
${xpath_partener_personal_nav_bar}    //div[@class="navbar-brand"]
${xpath_form_button}    ${shadowdom_dalia_form_holder}(".dalia-button-container")

*** Keywords ***
Check CareerSite Page Is Displayed
    Wait Until Page Contains Element    ${xpath_partener_personal_nav_bar}

Click On Form Button In CareerSite
    Wait Until Page Contains Element    ${xpath_form_button}
    Click Element    ${xpath_form_button}
    