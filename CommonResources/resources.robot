*** Settings ***
Library     Selenium2Library
Library     DateTime
Library     String
Library     Process
Library     Collections
Resource    ./POM/careersite_res.robot
Resource    ./POM/forms_res.robot
Resource    ./common_words.robot

*** Keywords ***
Open CareerSite
    Open Browser    ${career_site_url}    ${browser}
    Maximize Browser Window
    Delete All Cookies
    Sleep    2s

