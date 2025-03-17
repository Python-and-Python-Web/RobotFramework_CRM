*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =                      Customers Are Priority One
${HOME_GRID_LABEL_1} =                      Fast
${HOME_GRID_LABEL_2} =                      Friendly
${HOME_GRID_LABEL_3} =                      Factual
${HOME_GRID_LABELS_PARAGRAPH} =            Donec et lectus bibendum dolor dictum auctor in ac erat. Vestibulum egestas sollicitudin metus non urna in eros tincidunt convallis id id nisi in interdum.



*** Keywords ***
Navigate To
    go to                       ${URL}

Verify Page Loaded
    wait until page contains    ${HOME_HEADER_LABEL}

Verify GRID Label_1 Loaded
    wait until page contains    ${HOME_GRID_LABEL_1}

Verify GRID Label_2 Loaded
    wait until page contains    ${HOME_GRID_LABEL_2}

Verify GRID Label_3 Loaded
    wait until page contains    ${HOME_GRID_LABEL_3}

Verify GRID Labels Paragraph Loading
    wait until page contains    ${HOME_GRID_LABELS_PARAGRAPH}