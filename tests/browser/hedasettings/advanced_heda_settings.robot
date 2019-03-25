*** Settings ***

Resource        tests/HEDA.robot
Library         tests/HEDA.py
Suite Setup     Open Test Browser
Suite Teardown  Delete Records and Close Browser

*** Test Cases ***

Verify All HEDA Settings
    Go To Heda Settings

    Wait for Locator                            heda_settings.affiliations_tab
	  Click on Element                            heda_settings.affiliations_tab

    ${affl_check} =  Get Heda Locator           heda_settings.affiliations_check
    ${affl_role_checkbox} =  Get Heda Locator   heda_settings.affiliations_role_checkbox
    Select Checkbox In Heda Settings            ${affl_check}        ${affl_role_checkbox}                
    
    Wait for Locator                            heda_settings.affiliation_mappings_tab
    Click on Element                            heda_settings.affiliation_mappings_tab

    #Go into Edit Mode
    Click Button                                Edit

    #Save settings
    Click Button                                Save

