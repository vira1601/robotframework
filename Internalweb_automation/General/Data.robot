*** Variables ***
#CONFIG
${browser}              headlesschrome
${environment}          staging
${setSeleniumSpeed}     0.5
&{url}                  dev=https://www.stage.tech.evhive.info
...                     staging=https://www.stage.tech.evhive.info

#data
&{REGISTERED_USER_qa}       Email=qa@cohive.space           Password=Cocowork123!
&{UNREGISTERED_USER}        Email=evhivetest@gmail.com      Password=evhive2018
&{REGISTERED_MEMBERS_qa}    Email=qa.cohive@gmail.com       Password=Cocowork123!
&{internal_user_id_qa}      dev=84      staging=131
&{user_id_qa}               dev=195     staging=444
&{corp_id_qa}               dev=378     staging=640