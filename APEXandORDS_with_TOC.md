# Table of Contents
- [Slide 01 - ODTUG Kscope25 Opening Slide (Note, removed for ECOUG, all slide numbers are off by one below).](#slide-01---odtug-kscope25-opening-slide-(note,-removed-for-ecoug,-all-slide-numbers-are-off-by-one-below).)
- [Slide 02 - APEX & ORDS for DBAs and Sysadmins - 2025](#slide-02---apex-&-ords-for-dbas-and-sysadmins---2025)
- [Slide 03 - hidden - Joke](#slide-03---hidden---joke)
- [Slide 06 - Thanks](#slide-06---thanks)
- [Slide 07 - hidden - Intro ](#slide-07---hidden---intro-)
- [Slide 08 - The most important slide](#slide-08---the-most-important-slide)
- [Slide 09 - hidden - The Problem](#slide-09---hidden---the-problem)
- [Slide 10 - There are so many things to think about...](#slide-10---there-are-so-many-things-to-think-about...)
- [Slide 11 - hidden - Agenda](#slide-11---hidden---agenda)
- [Slide 12 - Agenda](#slide-12---agenda)
- [Slide 13 - hidden - Before we start](#slide-13---hidden---before-we-start)
- [Slide 14 - The Pre-APEX Database](#slide-14---the-pre-apex-database)
- [Slide 15 - What schemas do you have before APEX is installed?](#slide-15---what-schemas-do-you-have-before-apex-is-installed?)
- [Slide 16 - What components do you have before APEX is installed?](#slide-16---what-components-do-you-have-before-apex-is-installed?)
- [Slide 17 - How many public synonyms before APEX is installed?](#slide-17---how-many-public-synonyms-before-apex-is-installed?)
- [Slide 18 - Tablespaces before APEX is installed](#slide-18---tablespaces-before-apex-is-installed)
- [Slide 19 - hidden - Solution #1](#slide-19---hidden---solution-#1)
- [Slide 20 - 01 Install APEX Components (REQUIRED)](#slide-20---01-install-apex-components-(required))
- [Slide 21 - Bare minimum DBA action: Install APEX Component](#slide-21---bare-minimum-dba-action:-install-apex-component)
- [Slide 22 - Root container or pluggable install?](#slide-22---root-container-or-pluggable-install?)
- [Slide 23 - Root container or pluggable install?](#slide-23---root-container-or-pluggable-install?)
- [Slide 24 - Download APEX](#slide-24---download-apex)
- [Slide 25 - Get APEX Link](#slide-25---get-apex-link)
- [Slide 26 - Download and extract APEX](#slide-26---download-and-extract-apex)
- [Slide 27 - Install APEX component in a pluggable database](#slide-27---install-apex-component-in-a-pluggable-database)
- [Slide 28 - A note about APEX tablespaces](#slide-28---a-note-about-apex-tablespaces)
- [Slide 29 - What schemas do you have before APEX is installed?](#slide-29---what-schemas-do-you-have-before-apex-is-installed?)
- [Slide 30 - What schemas do you have after APEX is installed?](#slide-30---what-schemas-do-you-have-after-apex-is-installed?)
- [Slide 31 -  What components do you have before APEX is installed?](#slide-31----what-components-do-you-have-before-apex-is-installed?)
- [Slide 32 - What components do you have after APEX is installed?](#slide-32---what-components-do-you-have-after-apex-is-installed?)
- [Slide 33 - How many public synonyms before APEX is installed?](#slide-33---how-many-public-synonyms-before-apex-is-installed?)
- [Slide 34 - How many public synonyms after APEX is installed?](#slide-34---how-many-public-synonyms-after-apex-is-installed?)
- [Slide 35 - Tablespaces before APEX is installed](#slide-35---tablespaces-before-apex-is-installed)
- [Slide 36 - Tablespaces after APEX is installed](#slide-36---tablespaces-after-apex-is-installed)
- [Slide 37 - What does the database now tell us about APEX?](#slide-37---what-does-the-database-now-tell-us-about-apex?)
- [Slide 38 - Get the latest APEX patch](#slide-38---get-the-latest-apex-patch)
- [Slide 39 - Get the latest APEX patch](#slide-39---get-the-latest-apex-patch)
- [Slide 40 - Get the latest APEX patch](#slide-40---get-the-latest-apex-patch)
- [Slide 41 - Get the latest APEX patch](#slide-41---get-the-latest-apex-patch)
- [Slide 42 - Download and extract APEX patch](#slide-42---download-and-extract-apex-patch)
- [Slide 43 - Install latest APEX patch in the database](#slide-43---install-latest-apex-patch-in-the-database)
- [Slide 44 - Same slide as the previous slide with bug 38000699: RUNNING PSA CATPATCH.SQL FROM SQLCL, RESULTS IN MESSAGE: TIMING COMMAND IS OBSOLETE](#slide-44---same-slide-as-the-previous-slide-with-bug-38000699:-running-psa-catpatch.sql-from-sqlcl,-results-in-message:-timing-command-is-obsolete)
- [Slide 45 - What does the database now tell us about APEX?](#slide-45---what-does-the-database-now-tell-us-about-apex?)
- [Slide 46 - Did security change?](#slide-46---did-security-change?)
- [Slide 47 - What did you just deliver to your database developers?](#slide-47---what-did-you-just-deliver-to-your-database-developers?)
- [Slide 48 - 01 Install APEX Component (REQUIRED)](#slide-48---01-install-apex-component-(required))
- [Slide 49 - hidden - Solution #2](#slide-49---hidden---solution-#2)
- [Slide 50 - 02 Reach Out Of The Database (Optional)](#slide-50---02-reach-out-of-the-database-(optional))
- [Slide 51 - Security is about to change!](#slide-51---security-is-about-to-change!)
- [Slide 52 - Those extra value packages don’t work… yet](#slide-52---those-extra-value-packages-don’t-work…-yet)
- [Slide 53 - The easy button](#slide-53---the-easy-button)
- [Slide 54 - Those extra value packages now work…](#slide-54---those-extra-value-packages-now-work…)
- [Slide 55 - …but not for https requests (unless you are on 23ai+!)](#slide-55---…but-not-for-https-requests-(unless-you-are-on-23ai+!))
- [Slide 57 - You need a TLS wallet! (unless you are on 23ai!)](#slide-57---you-need-a-tls-wallet!-(unless-you-are-on-23ai!))
- [Slide 58 - You need a TLS wallet! (unless you are on 23ai!)](#slide-58---you-need-a-tls-wallet!-(unless-you-are-on-23ai!))
- [Slide 59 - What is a TLS wallet?](#slide-59---what-is-a-tls-wallet?)
- [Slide 60 - Aside: Other types of wallets you say?](#slide-60---aside:-other-types-of-wallets-you-say?)
- [Slide 61 - Create a TLS wallet (not needed on 23ai or higher!)](#slide-61---create-a-tls-wallet-(not-needed-on-23ai-or-higher!))
- [Slide 62 - Configure APEX tls wallet location (not needed on 23ai+!)](#slide-62---configure-apex-tls-wallet-location-(not-needed-on-23ai+!))
- [Slide 63 - Get a root certificate to add to the wallet](#slide-63---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 64 - Get a root certificate to add to the wallet](#slide-64---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 65 - Get a root certificate to add to the wallet](#slide-65---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 66 - Get a root certificate to add to the wallet](#slide-66---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 67 - Get a root certificate to add to the wallet](#slide-67---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 68 - Get a root certificate to add to the wallet](#slide-68---get-a-root-certificate-to-add-to-the-wallet)
- [Slide 69 - Add a root certificate to the TLS wallet (not needed on 23ai+!)](#slide-69---add-a-root-certificate-to-the-tls-wallet-(not-needed-on-23ai+!))
- [Slide 70 - https requests now work in 19c too! (23ai “just workS”)](#slide-70---https-requests-now-work-in-19c-too!-(23ai-“just-works”))
- [Slide 71 - Add a self signed cert to the TLS wallet](#slide-71---add-a-self-signed-cert-to-the-tls-wallet)
- [Slide 72 - Let’s revisit the easy button from earlier…](#slide-72---let’s-revisit-the-easy-button-from-earlier…)
- [Slide 73 - I’d like to manage this with greater granularity](#slide-73---i’d-like-to-manage-this-with-greater-granularity)
- [Slide 74 - 02 Reach Out Of The Database (Optional)](#slide-74---02-reach-out-of-the-database-(optional))
- [Slide 75 - hidden - Solution #3](#slide-75---hidden---solution-#3)
- [Slide 76 - 03 Enable Access Into The Database (Optional)](#slide-76---03-enable-access-into-the-database-(optional))
- [Slide 77 - Oracle REST Data Services (ORDS)](#slide-77---oracle-rest-data-services-(ords))
- [Slide 78 - Oracle REST Data Services (ORDS)](#slide-78---oracle-rest-data-services-(ords))
- [Slide 79 - Where should ords be deployed?](#slide-79---where-should-ords-be-deployed?)
- [Slide 80 - User access ports: 443 or 80 or 1024 or higher?](#slide-80---user-access-ports:-443-or-80-or-1024-or-higher?)
- [Slide 81 - Security is about to change even more!](#slide-81---security-is-about-to-change-even-more!)
- [Slide 82 - Unlocking and creating new accounts?](#slide-82---unlocking-and-creating-new-accounts?)
- [Slide 83 - Unlock apex_public_user](#slide-83---unlock-apex_public_user)
- [Slide 84 - What about apex_rest_config.sql?](#slide-84---what-about-apex_rest_config.sql?)
- [Slide 85 - Download ORDS](#slide-85---download-ords)
- [Slide 86 - Download ORDS source](#slide-86---download-ords-source)
- [Slide 87 - Create ORDS directories](#slide-87---create-ords-directories)
- [Slide 88 - Choose an option for APEX static images](#slide-88---choose-an-option-for-apex-static-images)
- [Slide 89 - Option 1: Use Oracle's content delivery (preferred)](#slide-89---option-1:-use-oracle's-content-delivery-(preferred))
- [Slide 90 - Option 2: Manually maintain apex images](#slide-90---option-2:-manually-maintain-apex-images)
- [Slide 91 - Create ORDS runtime](#slide-91---create-ords-runtime)
- [Slide 92 - ORDS runtime details](#slide-92---ords-runtime-details)
- [Slide 93 - Configure ORDS](#slide-93---configure-ords)
- [Slide 94 - Configure ORDS (continued)](#slide-94---configure-ords-(continued))
- [Slide 95 - Configure ORDS (continued)](#slide-95---configure-ords-(continued))
- [Slide 96 - ORDS is now running](#slide-96---ords-is-now-running)
- [Slide 97 - What happened in our configuration directory](#slide-97---what-happened-in-our-configuration-directory)
- [Slide 98 - What is in pool.xml?](#slide-98---what-is-in-pool.xml?)
- [Slide 99 - What is in settings.xml?](#slide-99---what-is-in-settings.xml?)
- [Slide 100 - ORDS works!](#slide-100---ords-works!)
- [Slide 101 - Create an APEX admin user and password](#slide-101---create-an-apex-admin-user-and-password)
- [Slide 102 - Login to APEX](#slide-102---login-to-apex)
- [Slide 103 - Success!](#slide-103---success!)
- [Slide 104 - Service URLs](#slide-104---service-urls)
- [Slide 105 - Cool/Good URLs](#slide-105---cool/good-urls)
- [Slide 106 - Default service URLs are bad according to Sir Tim](#slide-106---default-service-urls-are-bad-according-to-sir-tim)
- [Slide 107 - Let’s fix those URLs…](#slide-107---let’s-fix-those-urls…)
- [Slide 108 - …and other things with poor defaults](#slide-108---…and-other-things-with-poor-defaults)
- [Slide 109 - Stop ORDS](#slide-109---stop-ords)
- [Slide 110 - Reconfigure ords settings](#slide-110---reconfigure-ords-settings)
- [Slide 111 - Configure ords directories to be more maintainable](#slide-111---configure-ords-directories-to-be-more-maintainable)
- [Slide 112 - Restart and monitor ORDS](#slide-112---restart-and-monitor-ords)
- [Slide 113 - It works!](#slide-113---it-works!)
- [Slide 114 - What schemas changes after APEX & ORDS are installed?](#slide-114---what-schemas-changes-after-apex-&-ords-are-installed?)
- [Slide 115 - What components do you have after APEX & ORDS are installed?](#slide-115---what-components-do-you-have-after-apex-&-ords-are-installed?)
- [Slide 116 - How many public synonyms after APEX & ORDS are installed?](#slide-116---how-many-public-synonyms-after-apex-&-ords-are-installed?)
- [Slide 117 - Tablespaces after APEX & ORDS are installed](#slide-117---tablespaces-after-apex-&-ords-are-installed)
- [Slide 118 - 03 Enable Access Into The Database (Optional)](#slide-118---03-enable-access-into-the-database-(optional))
- [Slide 119 - SQL Developer Web](#slide-119---sql-developer-web)
- [Slide 120 - First REST enable schemas](#slide-120---first-rest-enable-schemas)
- [Slide 121 - What does the database tell us about rest schemas?](#slide-121---what-does-the-database-tell-us-about-rest-schemas?)
- [Slide 122 - Logging in...](#slide-122---logging-in...)
- [Slide 123 - Sweet stuff! Including new to 25.3 dark mode](#slide-123---sweet-stuff!-including-new-to-25.3-dark-mode)
- [Slide 124 - Sweet stuff!](#slide-124---sweet-stuff!)
- [Slide 125 - Sweet stuff!](#slide-125---sweet-stuff!)
- [Slide 126 - AGENDA](#slide-126---agenda)
- [Slide 127 - hidden - Conclusion](#slide-127---hidden---conclusion)
- [Slide 128 - In Conclusion:](#slide-128---in-conclusion:)
- [Slide 129 - The most important slide](#slide-129---the-most-important-slide)
- [Slide 130 - Thanks](#slide-130---thanks)
- [Slide 131 - AGENDA](#slide-131---agenda)
- [Slide 132 - hidden - Solution #4](#slide-132---hidden---solution-#4)
- [Slide 133 - Bonus 1: Create APEX Resource Plan (Optional)](#slide-133---bonus-1:-create-apex-resource-plan-(optional))
- [Slide 134 - Pluggable default resource plan during the day](#slide-134---pluggable-default-resource-plan-during-the-day)
- [Slide 135 - Pluggable default plan during nights & weekends](#slide-135---pluggable-default-plan-during-nights-&-weekends)
- [Slide 136 - Default Resource Manager Plans](#slide-136---default-resource-manager-plans)
- [Slide 137 - Let’s make a new plan!](#slide-137---let’s-make-a-new-plan!)
- [Slide 138 - Let’s make a new plan!](#slide-138---let’s-make-a-new-plan!)
- [Slide 139 - Let’s make a new plan!](#slide-139---let’s-make-a-new-plan!)
- [Slide 140 - Let’s make a new plan!](#slide-140---let’s-make-a-new-plan!)
- [Slide 141 - Let’s make a new plan! ](#slide-141---let’s-make-a-new-plan!-)
- [Slide 142 - Let’s make a new plan!](#slide-142---let’s-make-a-new-plan!)
- [Slide 143 - Let’s make a new plan!](#slide-143---let’s-make-a-new-plan!)
- [Slide 144 - Let’s make a new plan!](#slide-144---let’s-make-a-new-plan!)
- [Slide 145 - What happened to our APEX & ORDS schemas?](#slide-145---what-happened-to-our-apex-&-ords-schemas?)
- [Slide 146 - hidden - Solution #5](#slide-146---hidden---solution-#5)
- [Slide 147 - 05 Bonus 2: Create A systemd Service (Optional)](#slide-147---05-bonus-2:-create-a-systemd-service-(optional))
- [Slide 148 - Stop ORDS we ran with nohup](#slide-148---stop-ords-we-ran-with-nohup)
- [Slide 149 - Create ORDS service](#slide-149---create-ords-service)
- [Slide 150 - Enable & start ORDS service](#slide-150---enable-&-start-ords-service)
- [Slide 151 - Manage ORDS service - Status](#slide-151---manage-ords-service---status)
- [Slide 152 - Manage ORDS service – Read logs & stop](#slide-152---manage-ords-service-–-read-logs-&-stop)
- [Slide 153 - hidden - Solution #6](#slide-153---hidden---solution-#6)
- [Slide 154 - 06 Bonus 3: Run ORDS As ords Instead Of root (Optional)](#slide-154---06-bonus-3:-run-ords-as-ords-instead-of-root-(optional))
- [Slide 155 - Where should ords be deployed?](#slide-155---where-should-ords-be-deployed?)
- [Slide 157 - ORDS deployment: Who?](#slide-157---ords-deployment:-who?)
- [Slide 158 - Create ords os user & change file ownership](#slide-158---create-ords-os-user-&-change-file-ownership)
- [Slide 159 - Modify ords systemd service to use ords os user](#slide-159---modify-ords-systemd-service-to-use-ords-os-user)
- [Slide 160 - Create firewalld ORDS service](#slide-160---create-firewalld-ords-service)
- [Slide 161 - Create firewalld forward from 443 to 8080](#slide-161---create-firewalld-forward-from-443-to-8080)
- [Slide 162 - Update the port that ORDS uses](#slide-162---update-the-port-that-ords-uses)
- [Slide 163 - Secure the ords account & restart ords](#slide-163---secure-the-ords-account-&-restart-ords)
- [Slide 164 - ORDS works!](#slide-164---ords-works!)
- [Slide 165 - AGENDA](#slide-165---agenda)
- [Slide 166 - The most important slide](#slide-166---the-most-important-slide)
- [Slide 167 - Thanks](#slide-167---thanks)
- [Slide 168 - ODTUG Kscope25 closing slide (This slide was removed for ECOUG)](#slide-168---odtug-kscope25-closing-slide-(this-slide-was-removed-for-ecoug))

This document captures each slide's content and commands for the session: APEX & ORDS for DBAs and System Admins by Rich Soule.
Each slide is labeled individually. Hidden slides are indicated.
For full reference, see: https://github.com/RichardSoule/APEXandORDSforDBASandSysadmins

If a slide has no content, it was almost certainly just pictures.
I also removed the prompt character from commands so that they'd be easier to copy and paste if you wanted to do that.

For example, if the slide had the following text:
```
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
$ orapki wallet add -wallet . –trusted_cert –cert self_signed_cert.crt 
```
It become the below in this document:
```
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet add -wallet . –trusted_cert –cert self_signed_cert.crt 
```
There are also some slides that are hidden, I use them when I'm looking at the presentation in slide sorter view when I'm working on my presentation.

If you have any feedback, please reach out: richard.soule@talan.com.

This content was updated in November 2025 for the East Coast Oracle Users' Group.

## Slide 01 - ODTUG Kscope25 Opening Slide (Note, removed for ECOUG, all slide numbers are off by one below).

## Slide 02 - APEX & ORDS for DBAs and Sysadmins - 2025
Rich Soule (richard.soule@talan.com)
Director of Consulting Services
Oracle Technologies group at Talan
(formally Insum: Same People, Same Mission)

## Slide 03 - hidden - Joke

## Slide 04 - 
It’s as easy as 1, 2, 3

## Slide 05 - 
1. Install APEX
2. Install ORDS
3. Take a break, you're done!

## Slide 06 - Thanks
Rich Soule
richard.soule@talan.com

## Slide 07 - hidden - Intro 

## Slide 08 - The most important slide
https://github.com/RichardSoule/APEXandORDSforDBASandSysadmins

## Slide 09 - hidden - The Problem

## Slide 10 - There are so many things to think about...
- Where is APEX going to be installed? Root container (nope) or Pluggable install (yes!)
- What is going to happen to the database? How many new accounts? Which are locked vs. unlocked?
- Will I need a database TLS wallet? 19c and earlier (yes/maybe not!) vs. 23ai/26ai and later (no), and should it be an auto login wallet? (yes)
- Where will APEX static images be maintained? Content delivery network (yes!) or self-managed on your server (maybe)?
- What are you going to do about database profiles? “It worked yesterday; no, we didn’t change anything.”
- Should you use a web server or ORDS standalone? (ORDS standalone “just works”)
- Should you use an application server or ORDS standalone? (ORDS standalone “just works”)
- Should you deploy with https or http? (Always https!)
- What port should end users use to access APEX? (End users should always use port 443)
- What should the context path be for ORDS? (Not /ords! How about /app instead?)
- Should you enable all ORDS features or just some ORDS features? (All is better)
- Etc…
## Slide 11 - hidden - Agenda

## Slide 12 - Agenda
- We are going to cover three main topics:
- 00 The Pre-APEX Database
- 01 Install APEX Component (REQUIRED)
- 02 Reach Out Of The Database (Optional)
- 03 Enable Access Into The Database (Optional)
## Slide 13 - hidden - Before we start

## Slide 14 - The Pre-APEX Database

## Slide 15 - What schemas do you have before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
order by username;
```
```
USERNAME                  ACCOUNT_STATUS      EXPIRY_DATE    DEFAULT_TABLESPACE    PROFILE    INITIAL_RSRC_CONSUMER_GROUP    AUTHENTICATION_TYPE    ORACLE_MAINTAINED
_________________________ ___________________ ______________ _____________________ __________ ______________________________ ______________________ ____________________

ANONYMOUS                 EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
APPQOSSYS                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
AUDSYS                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
CTXSYS                    EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
DBSFWUSER                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DBSNMP                    LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DIP                       LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GGSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMADMIN_INTERNAL         LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMCATUSER                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMUSER                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDDATA                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OJVMSYS                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OLAPSYS                   LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
ORACLE_OCM                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OUTLN                     LOCKED                             SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
REMOTE_SCHEDULER_AGENT    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYS                       OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
SYS$UMF                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSBACKUP                 LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSDG                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSKM                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSRAC                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSTEM                    OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
WMSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XDB                       LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XS$NULL                   EXPIRED & LOCKED                   SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
28 rows selected.
```
## Slide 16 - What components do you have before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
  select comp_name
       , version_full
       , status
       , schema
    from dba_registry
order by comp_name;
```
```
COMP_NAME                             VERSION_FULL    STATUS        SCHEMA
_____________________________________ _______________ _____________ __________
JServer JAVA Virtual Machine          19.28.0.0.0     VALID         SYS
OLAP Analytic Workspace               19.28.0.0.0     VALID         SYS
Oracle Database Catalog Views         19.28.0.0.0     VALID         SYS
Oracle Database Java Packages         19.28.0.0.0     VALID         SYS
Oracle Database Packages and Types    19.28.0.0.0     VALID         SYS
Oracle OLAP API                       19.28.0.0.0     VALID         OLAPSYS
Oracle Real Application Clusters      19.28.0.0.0     OPTION OFF    SYS
Oracle Text                           19.28.0.0.0     VALID         CTXSYS
Oracle Workspace Manager              19.28.0.0.0     VALID         WMSYS
Oracle XDK                            19.28.0.0.0     VALID         SYS
Oracle XML Database                   19.28.0.0.0     VALID         XDB
Spatial                               19.28.0.0.0     VALID         MDSYS
12 rows selected.
```
## Slide 17 - How many public synonyms before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
select to_char(count(*),'99,999') as "Total Public Synonyms"
  from dba_synonyms;
```
```
Total Public Synonyms
________________________
 11,977
```
## Slide 18 - Tablespaces before APEX is installed
```sql
SYS@orcl AS SYSDBA> 
   with tablespace_bytes_free
        as (select tablespace_name, sum(bytes) as bytes_free
              from dba_free_space
          group by tablespace_name)
      , tablespace_allocated_and_max
        as (select tablespace_name, sum(bytes) as bytes_alloc
                 , sum(decode(autoextensible, 'YES', maxbytes
                                             , 'NO' , bytes))  as maxbytes
              from dba_data_files
          group by tablespace_name)
select tablespace_name as "Tablespace Name"
     , round(bytes_alloc / 1024 / 1024)                        as "Allocated (MB)"
     , round(nvl(bytes_free, 0) / 1024 / 1024)                 as "Free (MB)"
     , round((bytes_alloc - nvl(bytes_free, 0)) / 1024 / 1024) as "Used (MB)"
     , round((nvl(bytes_free, 0) / bytes_alloc) * 100)         as "% Free"
     , 100 - round((nvl(bytes_free, 0) / bytes_alloc) * 100)   as "% Used"
     , to_char(round(maxbytes/1024/1024),'99,999')             as "Max Size (MB)"
  from tablespace_bytes_free
  join tablespace_allocated_and_max using (tablespace_name);
```
```
Tablespace Name       Allocated (MB)    Free (MB)    Used (MB)    % Free    % Used Max Size (MB)
__________________ _________________ ____________ ____________ _________ _________ ________________
SYSTEM                           470           10          460         2        98  32,768
SYSAUX                           505           27          478         5        95  32,768
UNDOTBS1                         345          320           25        93         7  32,768
USERS                              5            4            1        80        20  32,768
```
## Slide 19 - hidden - Solution #1

## Slide 20 - 01 Install APEX Components (REQUIRED)
Enable developers to leverage the APEX component APIs within the database

## Slide 21 - Bare minimum DBA action: Install APEX Component
But: “Security”
         It’s just a database component
But: “I’ve never done it”
         I’m going to show you how
But: “It’s too complicated”
          Again, I’m going to show you how
But: “This other thing”
         Please just continue through this presentation

## Slide 22 - Root container or pluggable install?
Pluggable is almost always the right answer.
Root container install might be useful if you are hosting hundreds or thousands of APEX installs, each in their own pluggable database… but you probably aren’t.


## Slide 23 - Root container or pluggable install?
Pluggable is always the right answer. (Suggestion from Kris Rice)
Root container install might be useful if you are hosting hundreds or thousands of APEX installs, each in their own pluggable database… but you probably aren’t.

## Slide 24 - Download APEX
Or just go to https://apex.oracle.com/download

## Slide 25 - Get APEX Link

## Slide 26 - Download and extract APEX
```
```
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2]
wget https://download.oracle.com/otn_software/apex/apex_24.2.zip
```
--2025-10-15 13:49:28--  https://download.oracle.com/otn_software/apex/apex_24.2.zip
Resolving download.oracle.com (download.oracle.com)... 23.197.176.100
Connecting to download.oracle.com (download.oracle.com)|23.197.176.100|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 303347115 (289M) [application/zip]
Saving to: ‘apex_24.2.zip’
apex_24.2.zip 100%[============================>] 289.29M   114MB/s    in 2.5s
2025-10-15 13:49:31 (114 MB/s) - ‘apex_24.2.zip’ saved [303347115/303347115]

```
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2]
unzip -q apex_24.2.zip
```
```
## Slide 27 - Install APEX component in a pluggable database
```
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2] 
cd apex
```
```
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2/apex]
sql sys@orcl as sysdba
```
```sql
SYS@orcl AS SYSDBA> @apexins sysaux sysaux temp /i/
[SNIP]
Thank you for installing Oracle APEX 24.2.0
Oracle APEX is installed in the APEX_240200 schema.
The structure of the link to the Oracle APEX Administration Services is as follows:
http://host:port/ords/apex_admin
The structure of the link to the Oracle APEX development environment is as follows:
http://host:port/ords/apex
timing for: Complete Installation
Elapsed:    3.87  <-- Under 4 minutes on my desktop vm
SYS> exit
;
```
## Slide 28 - A note about APEX tablespaces
```sql
SYS@orcl AS SYSDBA> @apexins sysaux sysaux temp /i/
SYSAUX is totally fine, but feel free to create your own tablespace if you want.
The APEX repository and packages are stored here, along with your APEX application metadata.
This becomes the default tablespace for the APEX schema. Note that other Oracle Database components also use SYSAUX for storage.

SYS@orcl AS SYSDBA> @apexins sysaux sysaux temp /i/
SYSAUX is fine if you are not doing a lot of document uploads, but if you are building something like a content 
management application with APEX document upload capability, consider creating a tablespace to hold the documents. 
Maybe named APEX_DOCUMENT_UPLOADS. Files uploaded to APEX are stored here.
This becomes the default tablespace for the FLOWS_FILES user.
;
```
## Slide 29 - What schemas do you have before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
order by username;
```
```
USERNAME                  ACCOUNT_STATUS      EXPIRY_DATE    DEFAULT_TABLESPACE    PROFILE    INITIAL_RSRC_CONSUMER_GROUP    AUTHENTICATION_TYPE    ORACLE_MAINTAINED
_________________________ ___________________ ______________ _____________________ __________ ______________________________ ______________________ ____________________

ANONYMOUS                 EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
APPQOSSYS                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
AUDSYS                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
CTXSYS                    EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
DBSFWUSER                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DBSNMP                    LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DIP                       LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GGSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMADMIN_INTERNAL         LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMCATUSER                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMUSER                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDDATA                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OJVMSYS                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OLAPSYS                   LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
ORACLE_OCM                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OUTLN                     LOCKED                             SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
REMOTE_SCHEDULER_AGENT    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYS                       OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
SYS$UMF                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSBACKUP                 LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSDG                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSKM                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSRAC                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSTEM                    OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
WMSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XDB                       LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XS$NULL                   EXPIRED & LOCKED                   SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
28 rows selected.
```
## Slide 30 - What schemas do you have after APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
order by username;
```
```
USERNAME                  ACCOUNT_STATUS      EXPIRY_DATE    DEFAULT_TABLESPACE    PROFILE    INITIAL_RSRC_CONSUMER_GROUP    AUTHENTICATION_TYPE    ORACLE_MAINTAINED
_________________________ ___________________ ______________ _____________________ __________ ______________________________ ______________________ ____________________
ANONYMOUS                 EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
APEX_240200               LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_ROUTER        OPEN                               SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_USER          LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APPQOSSYS                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
AUDSYS                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
CTXSYS                    EXPIRED & LOCKED    22-NOV-25      SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
DBSFWUSER                 LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DBSNMP                    LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
DIP                       LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
FLOWS_FILES               LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GGSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMADMIN_INTERNAL         LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMCATUSER                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
GSMUSER                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDDATA                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
MDSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OJVMSYS                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OLAPSYS                   LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
ORACLE_OCM                LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
OUTLN                     LOCKED                             SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
REMOTE_SCHEDULER_AGENT    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYS                       OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
SYS$UMF                   LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSBACKUP                 LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSDG                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSKM                     LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSRAC                    LOCKED                             USERS                 DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
SYSTEM                    OPEN                               SYSTEM                DEFAULT    SYS_GROUP                      PASSWORD               Y
WMSYS                     LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XDB                       LOCKED                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
XS$NULL                   EXPIRED & LOCKED                   SYSTEM                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
32 rows selected.

Four new accounts with authentication type = NONE: 
APEX_240200
APEX_PUBLIC_ROUTER
APEX_PUBLIC_USER
FLOWS_FILES
```
## Slide 31 -  What components do you have before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
  select comp_name
       , version_full
       , status
       , schema
    from dba_registry
order by comp_name;
```
```
COMP_NAME                             VERSION_FULL    STATUS        SCHEMA
_____________________________________ _______________ _____________ __________
JServer JAVA Virtual Machine          19.28.0.0.0     VALID         SYS
OLAP Analytic Workspace               19.28.0.0.0     VALID         SYS
Oracle Database Catalog Views         19.28.0.0.0     VALID         SYS
Oracle Database Java Packages         19.28.0.0.0     VALID         SYS
Oracle Database Packages and Types    19.28.0.0.0     VALID         SYS
Oracle OLAP API                       19.28.0.0.0     VALID         OLAPSYS
Oracle Real Application Clusters      19.28.0.0.0     OPTION OFF    SYS
Oracle Text                           19.28.0.0.0     VALID         CTXSYS
Oracle Workspace Manager              19.28.0.0.0     VALID         WMSYS
Oracle XDK                            19.28.0.0.0     VALID         SYS
Oracle XML Database                   19.28.0.0.0     VALID         XDB
Spatial                               19.28.0.0.0     VALID         MDSYS
12 rows selected.
```
## Slide 32 - What components do you have after APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
SYS@orcl AS SYSDBA> 
  select comp_name
       , version_full
       , status
       , schema
    from dba_registry
order by comp_name;
```
```
COMP_NAME                             VERSION_FULL    STATUS        SCHEMA
_____________________________________ _______________ _____________ __________
JServer JAVA Virtual Machine          19.28.0.0.0     VALID         SYS
OLAP Analytic Workspace               19.28.0.0.0     VALID         SYS
Oracle APEX                           24.2.0          VALID         APEX_240200
Oracle Database Catalog Views         19.28.0.0.0     VALID         SYS
Oracle Database Java Packages         19.28.0.0.0     VALID         SYS
Oracle Database Packages and Types    19.28.0.0.0     VALID         SYS
Oracle OLAP API                       19.28.0.0.0     VALID         OLAPSYS
Oracle Real Application Clusters      19.28.0.0.0     OPTION OFF    SYS
Oracle Text                           19.28.0.0.0     VALID         CTXSYS
Oracle Workspace Manager              19.28.0.0.0     VALID         WMSYS
Oracle XDK                            19.28.0.0.0     VALID         SYS
Oracle XML Database                   19.28.0.0.0     VALID         XDB
Spatial                               19.28.0.0.0     VALID         MDSYS
13 rows selected.
1 new component
```
## Slide 33 - How many public synonyms before APEX is installed?
```sql
SYS@orcl AS SYSDBA> 
select to_char(count(*),'99,999') as "Total Public Synonyms"
  from dba_synonyms;
```
```
Total Public Synonyms
________________________
 11,977
```
## Slide 34 - How many public synonyms after APEX is installed?
select to_char(count(*),'99,999') as "Total Public Synonyms"
  from dba_synonyms;

Total Public Synonyms
________________________
 12,634
657 new public synonyms

## Slide 35 - Tablespaces before APEX is installed
```sql
SYS@orcl AS SYSDBA> 
   with tablespace_bytes_free
        as (select tablespace_name, sum(bytes) as bytes_free
              from dba_free_space
          group by tablespace_name)
      , tablespace_allocated_and_max
        as (select tablespace_name, sum(bytes) as bytes_alloc
                 , sum(decode(autoextensible, 'YES', maxbytes
                                             , 'NO' , bytes))  as maxbytes
              from dba_data_files
          group by tablespace_name)
select tablespace_name as "Tablespace Name"
     , round(bytes_alloc / 1024 / 1024)                        as "Allocated (MB)"
     , round(nvl(bytes_free, 0) / 1024 / 1024)                 as "Free (MB)"
     , round((bytes_alloc - nvl(bytes_free, 0)) / 1024 / 1024) as "Used (MB)"
     , round((nvl(bytes_free, 0) / bytes_alloc) * 100)         as "% Free"
     , 100 - round((nvl(bytes_free, 0) / bytes_alloc) * 100)   as "% Used"
     , to_char(round(maxbytes/1024/1024),'99,999')             as "Max Size (MB)"
  from tablespace_bytes_free
  join tablespace_allocated_and_max using (tablespace_name);
```
```
Tablespace Name       Allocated (MB)    Free (MB)    Used (MB)    % Free    % Used Max Size (MB)
__________________ _________________ ____________ ____________ _________ _________ ________________
SYSTEM                           470           10          460         2        98  32,768
SYSAUX                           505           27          478         5        95  32,768
UNDOTBS1                         345          320           25        93         7  32,768
USERS                              5            4            1        80        20  32,768
```
## Slide 36 - Tablespaces after APEX is installed
```sql
SYS@orcl AS SYSDBA> 
   with tablespace_bytes_free
        as (select tablespace_name, sum(bytes) as bytes_free
              from dba_free_space
          group by tablespace_name)
      , tablespace_allocated_and_max
        as (select tablespace_name, sum(bytes) as bytes_alloc
                 , sum(decode(autoextensible, 'YES', maxbytes
                                             , 'NO' , bytes))  as maxbytes
              from dba_data_files
          group by tablespace_name)
select tablespace_name as "Tablespace Name"
     , round(bytes_alloc / 1024 / 1024)                        as "Allocated (MB)"
     , round(nvl(bytes_free, 0) / 1024 / 1024)                 as "Free (MB)"
     , round((bytes_alloc - nvl(bytes_free, 0)) / 1024 / 1024) as "Used (MB)"
     , round((nvl(bytes_free, 0) / bytes_alloc) * 100)         as "% Free"
     , 100 - round((nvl(bytes_free, 0) / bytes_alloc) * 100)   as "% Used"
     , to_char(round(maxbytes/1024/1024),'99,999')             as "Max Size (MB)"
  from tablespace_bytes_free
  join tablespace_allocated_and_max using (tablespace_name);
```
```
Tablespace Name       Allocated (MB)    Free (MB)    Used (MB)    % Free    % Used Max Size (MB)
__________________ _________________ ____________ ____________ _________ _________ ________________
SYSTEM                           600           10          591         2        98  32,768
SYSAUX                           755           41          714         5        95  32,768
UNDOTBS1                         345          158          187        46        54  32,768
USERS                              5            4            1        80        20  32,768
About 380 new Allocated MB
 and about 367 new Used MB
```
## Slide 37 - What does the database now tell us about APEX?
```sql
SYS@orcl AS SYSDBA> 
select *
  from apex_release;
```
```
VERSION_NO    API_COMPATIBILITY    PATCH_APPLIED
_____________ ____________________ ________________
24.2.0        2024.11.30           APPLIED <-- Ummm… No. I logged a bug, they “fixed the bug” by changing the comment.

SYS@orcl AS SYSDBA> 
info apex_release
Columns
NAME                DATA TYPE             NULL  DEFAULT    COMMENTS
 VERSION_NO         VARCHAR2(4000 BYTE)   Yes              The specific version number of this Oracle APEX instance
 API_COMPATIBILITY  VARCHAR2(4000 BYTE)   Yes              The version of the API that this release is compatible
                                                           with for importing applications or components
 PATCH_APPLIED      VARCHAR2(4000 BYTE)   Yes              Reserved for internal use during Oracle APEX upgrade

SYS@orcl AS SYSDBA> 
select * 
  from apex_patches;
no rows selected
```
## Slide 38 - Get the latest APEX patch

## Slide 39 - Get the latest APEX patch

## Slide 40 - Get the latest APEX patch

## Slide 41 - Get the latest APEX patch

## Slide 42 - Download and extract APEX patch
```
[oracle@databaseserver DB:dbacon /usr/local/src/oracle/apex/24.2]
vim wget.sh 
```
```
[oracle@databaseserver DB:dbacon /usr/local/src/oracle/apex/24.2]
source wget.sh
SSO UserName:richard.soule@talan.com
             <-- NOTE: About 95% of the time there is no password prompt.
                       Enter your password for oracle.com and press Enter.
[oracle@databaseserver DB:dbacon /usr/local/src/oracle/apex/24.2]
unzip -q p37366599_2420_Generic.zip
```
## Slide 43 - Install latest APEX patch in the database
```
[oracle@databaseserver DB:dbacon /usr/local/src/oracle/apex/24.2]
cd p37366599
```
```
[oracle@databaseserver DB:dbacon /usr/local/src/oracle/apex/24.2/37366599]
sql sys@orcl as sysdba
SYS@orcl AS SYSDBA> @catpatch
Timing command is obsolete. <-- Sigh
. ORACLE
.
. Oracle APEX 24.2.%
. Patch Set Exception 37366599
........................................
APEX_VERSION    APEX_SCHEMA
_______________ ______________
24.2.0          APEX_240200
[SNIP]
Timing command is obsolete. <-- Sigh, but under 10 seconds.
Disconnected from Oracle Database 19c Enterprise Edition Release 19.0.0.0.0 – Production
Version 19.28.0.0.0
```
## Slide 44 - Same slide as the previous slide with bug 38000699: RUNNING PSA CATPATCH.SQL FROM SQLCL, RESULTS IN MESSAGE: TIMING COMMAND IS OBSOLETE

## Slide 45 - What does the database now tell us about APEX?
```sql
SYS@orcl AS SYSDBA> 
select *
  from apex_release;
```
```
VERSION_NO    API_COMPATIBILITY    PATCH_APPLIED
_____________ ____________________ ________________
24.2.10       2024.11.30           APPLIED <-- This time it is true! 

SYS@orcl AS SYSDBA> 
select * 
  from apex_patches;
                                       ID    PATCH_NUMBER PATCH_VERSION    IMAGES_VERSION    IS_BUNDLE_PATCH    INSTALLED_ON
_________________________________________ _______________ ________________ _________________ __________________ ______________________
   71857712290828195631673493177754108037        37366599 10               24.2.10           Yes                2025-11-02 15:22:04

SYS@orcl AS SYSDBA> 
select comp_name
     , version_full
  from dba_registry
 where comp_ID='APEX’;
    COMP_NAME     VERSION_FULL
______________ _______________
Oracle APEX    24.2.10
```
## Slide 46 - Did security change?
NO
No new schemas with logins.
New APIs, but nothing that 100 brilliant developers
could have done with a few decades of development time.

## Slide 47 - What did you just deliver to your database developers?
https://apex.oracle.com/api

## Slide 48 - 01 Install APEX Component (REQUIRED)
You can stop here, and you have still delivered incredible value!
Enable developers to leverage the APEX component APIs within the database

## Slide 49 - hidden - Solution #2

## Slide 50 - 02 Reach Out Of The Database (Optional)
Enable developers to leverage the APEX APIs to reach web services

## Slide 51 - Security is about to change!
The database has provided UTL_HTTP packages for more than 25 years.
APEX can use those foundational packages to add extra value if you enable them.

## Slide 52 - Those extra value packages don’t work… yet
```sql
SYS@orcl AS SYSDBA> 
select apex_web_service.make_rest_request('http://www.google.com','GET') as "Google"
  from dual;
```
```
Error starting at line : 1 in command –
select apex_web_service.make_rest_request('http://www.google.com','GET') as "Google" from dual
Error report –
ORA-29273: HTTP request failed
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES", line 681
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 1004
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 650
ORA-24247: network access denied by access control list (ACL)
ORA-06512: at "SYS.UTL_HTTP", line 380
ORA-06512: at "SYS.UTL_HTTP", line 1148
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 598
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 816
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 1332
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES", line 641
ORA-06512: at "APEX_240200.WWV_FLOW_WEBSERVICES_API", line 661
ORA-06512: at line 1
```
## Slide 53 - The easy button
```sql
SYS@orcl AS SYSDBA>
begin
   dbms_network_acl_admin.append_host_ace(
      host => '*',
      ace  => xs$ace_type(privilege_list => xs$name_list('connect'),
                          principal_name => apex_application.g_flow_schema_owner,
                          principal_type => xs_acl.ptype_db));
```
```
end;
/
PL/SQL procedure successfully completed.

Database users with the 5 facts (host, port, service name, username and password) can now reach any URL on any host & port combination
```
## Slide 54 - Those extra value packages now work…
```sql
SYS@orcl AS SYSDBA> 
select apex_web_service.make_rest_request('http://www.google.com','GET') as "Google"
  from dual;
```
```
Google
___________________________________________________________________________________
<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="en"
```
## Slide 55 - …but not for https requests (unless you are on 23ai+!)
```sql
SYS@orcl AS SYSDBA> 
select apex_web_service.make_rest_request('https://www.google.com','GET') as "Secure Google"                       
  from dual;
```
```
Error starting at line : 1 in command –
select apex_web_service.make_rest_request('https://www.google.com','GET') as "Secure Google" from dual
Error report –
ORA-29273: HTTP request failed
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES", line 681
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 1004
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 650
ORA-29024: Certificate validation failure
ORA-06512: at "SYS.UTL_HTTP", line 380
ORA-06512: at "SYS.UTL_HTTP", line 1148
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 598
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 816
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES_INVOKER", line 1332
ORA-06512: at "APEX_240200.WWV_FLOW_WEB_SERVICES", line 641
ORA-06512: at "APEX_240200.WWV_FLOW_WEBSERVICES_API", line 661
ORA-06512: at line 1

This “just works” on 23ai or higher!
```
## Slide 56 - 
"My developers & application also need to reach TLS protected URLs from our 19c (or earlier?) database"

## Slide 57 - You need a TLS wallet! (unless you are on 23ai!)
TLS wallet? Don’t you mean SSL wallet?

## Slide 58 - You need a TLS wallet! (unless you are on 23ai!)
TLS wallet? Don’t you mean SSL wallet?
                 =
Car? Don’t you mean horseless carriage?
We’ve been using TLS since the late 1990s.

## Slide 59 - What is a TLS wallet?
A TLS wallet lives in a directory and contains an ewallet.p12 file and optionally, a cwallet.sso file.
ewallet.p12 file contains trusted certificates *
cwallet.sso file contains an encrypted password that allows you and the database to read the ewallet.p12 file. *

* With other types of wallets, these files can hold different things. Don’t mix your wallets together!

## Slide 60 - Aside: Other types of wallets you say?
- xdb_wallet
- Automatically created by Oracle for each database that you create. Used by XML DB listener (that we don’t really use anymore).
- seps_wallet
- Secure Enterprise Password Store used to allow bequeath connections (no password needed) to Oracle database users other than SYS.
- tde_wallet (or, if you set the wallet_root database parameter, Oracle will name this wallet "tde“)
- Used to store Transparent Data Encryption keys
- tls_wallet
- Used to allow access to web services/URLs protected by TLS before Oracle 23ai. No longer needed for 23ai+ databases.
- I use the above as the actual names for my wallets.                          Again: Don’t mix your wallets together!
## Slide 61 - Create a TLS wallet (not needed on 23ai or higher!)
```
[oracle@databaseserver DB:orclcon ~]
locate /xdb_wallet/  <--Find a good location for the wallet. How about next to the delivered xdb_wallet?
/u01/app/oracle/admin/orclcon/xdb_wallet/cwallet.sso
/u01/app/oracle/admin/orclcon/xdb_wallet/ewallet.p12
[oracle@databaseserver DB:orclcon ~]
mkdir /u01/app/oracle/admin/orclcon/tls_wallet
[oracle@databaseserver DB:orclcon ~]
cd !$
cd /u01/app/oracle/admin/orclcon/tls_wallet
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet create -wallet . -auto_login
Oracle PKI Tool Release 19.0.0.0.0 – Production
Enter password:  <- Enter Wallet Password
Enter password again: <- Confirm Wallet Password
Operation is successfully completed.
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
ls
cwallet.sso  ewallet.p12
```
## Slide 62 - Configure APEX tls wallet location (not needed on 23ai+!)
```sql
SYS@orcl AS SYSDBA>
exec apex_instance_admin.set_parameter('WALLET_PATH','file:/u01/app/oracle/admin/orclcon/tls_wallet');
```
```
PL/SQL procedure successfully completed.

SYS@orcl AS SYSDBA> commit; <-- The above doesn’t seem to commit, so just go ahead and commit.
Commit complete.

Or you can use the APEX Admin UI, but we have yet to set that up.
```
## Slide 63 - Get a root certificate to add to the wallet
## Slide 64 - Get a root certificate to add to the wallet
## Slide 65 - Get a root certificate to add to the wallet
## Slide 66 - Get a root certificate to add to the wallet
## Slide 67 - Get a root certificate to add to the wallet
## Slide 68 - Get a root certificate to add to the wallet
```
-----BEGIN CERTIFICATE-----
MIIFVzCCAz+gAwIBAgINAgPlk28xsBNJiGuiFzANBgkqhkiG9w0BAQwFADBHMQsw
CQYDVQQGEwJVUzEiMCAGA1UEChMZR29vZ2xlIFRydXN0IFNlcnZpY2VzIExMQzEU
MBIGA1UEAxMLR1RTIFJvb3QgUjEwHhcNMTYwNjIyMDAwMDAwWhcNMzYwNjIyMDAw
MDAwWjBHMQswCQYDVQQGEwJVUzEiMCAGA1UEChMZR29vZ2xlIFRydXN0IFNlcnZp
Y2VzIExMQzEUMBIGA1UEAxMLR1RTIFJvb3QgUjEwggIiMA0GCSqGSIb3DQEBAQUA
A4ICDwAwggIKAoICAQC2EQKLHuOhd5s73L+UPreVp0A8of2C+X0yBoJx9vaMf/vo
27xqLpeXo4xL+Sv2sfnOhB2x+cWX3u+58qPpvBKJXqeqUqv4IyfLpLGcY9vXmX7w
Cl7raKb0xlpHDU0QM+NOsROjyBhsS+z8CZDfnWQpJSMHobTSPS5g4M/SCYe7zUjw
TcLCeoiKu7rPWRnWr4+wB7CeMfGCwcDfLqZtbBkOtdh+JhpFAz2weaSUKK0Pfybl
qAj+lug8aJRT7oM6iCsVlgmy4HqMLnXWnOunVmSPlk9orj2XwoSPwLxAwAtcvfaH
szVsrBhQf4TgTM2S0yDpM7xSma8ytSmzJSq0SPly4cpk9+aCEI3oncKKiPo4Zor8
Y/kB+Xj9e1x3+naH+uzfsQ55lVe0vSbv1gHR6xYKu44LtcXFilWr06zqkUspzBmk
MiVOKvFlRNACzqrOSbTqn3yDsEB750Orp2yjj32JgfpMpf/VjsPOS+C12LOORc92
wO1AK/1TD7Cn1TsNsYqiA94xrcx36m97PtbfkSIS5r762DL8EGMUUXLeXdYWk70p
aDPvOmbsB4om3xPXV2V4J95eSRQAogB/mqghtqmxlbCluQ0WEdrHbEg8QOB+DVrN
VjzRlwW5y0vtOUucxD/SVRNuJLDWcfr0wbrM7Rv1/oFB2ACYPTrIrnqYNxgFlQID
AQABo0IwQDAOBgNVHQ8BAf8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4E
FgQU5K8rJnEaK0gnhS9SZizv8IkTcT4wDQYJKoZIhvcNAQEMBQADggIBAJ+qQibb
C5u+/x6Wki4+omVKapi6Ist9wTrYggoGxval3sBOh2Z5ofmmWJyq+bXmYOfg6LEe
QkEzCzc9zolwFcq1JKjPa7XSQCGYzyI0zzvFIoTgxQ6KfF2I5DUkzps+GlQebtuy
h6f88/qBVRRiClmpIgUxPoLW7ttXNLwzldMXG+gnoot7TiYaelpkttGsN/H9oPM4
7HLwEXWdyzRSjeZ2axfG34arJ45JK3VmgRAhpuo+9K4l/3wV3s6MJT/KYnAK9y8J
ZgfIPxz88NtFMN9iiMG1D53Dn0reWVlHxYciNuaCp+0KueIHoI17eko8cdLiA6Ef
MgfdG+RCzgwARWGAtQsgWSl4vflVy2PFPEz0tv/bal8xa5meLMFrUKTX5hgUvYU/
Z6tGn6D/Qqc6f1zLXbBwHSs09dR2CQzreExZBfMzQsNhFRAbd03OIozUhfJFfbdT
6u9AWpQKXCBfTkBdYiJ23//OYb2MI3jSNwLgjt7RETeJ9r/tSQdirpLsQBqvFAnZ
0E6yove+7u7Y/9waLd64NnHi/Hm3lCXRSHNboTXns5lndcEZOitHTtNCjv0xyBZm
2tIMPNuzjsmhDYAPexZ3FL//2wmUspO8IFgV6dtxQ/PeEMMA3KgqlbbC1j+Qa3bb
bP6MvPJwNQzcmRk13NfIRmPVNnGuV/u3gm3c
-----END CERTIFICATE-----
```

## Slide 69 - Add a root certificate to the TLS wallet (not needed on 23ai+!)
```
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
vim GTSRootR1.crt
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet add -wallet . –trusted_cert –cert GTSRootR1.crt
Oracle PKI Tool Release 19.0.0.0.0 – Production
Cannot modify auto-login (sso) wallet
Enter wallet password: <- Enter wallet password
Operation is successfully completed.
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet display -wallet .
Requested Certificates:
User Certificates:
Trusted Certificates:
Subject:        CN=GTS Root R1,O=Google Trust Services LLC,C=US
Password to put cert into the wallet, no password to read the wallet.
```
## Slide 70 - https requests now work in 19c too! (23ai “just workS”)
```sql
SYS@orcl AS SYSDBA> 
select apex_web_service.make_rest_request('https://www.google.com','GET') as "Secure Google"                       
  from dual;
```
```
Secure Google
___________________________________________________________________________________
<!doctype html><html itemscope="" itemtype="http://schema.org/WebPage" lang="en"

Note: When testing, it's always better to go ahead and get a new database session after the wallet location is set.

Special 2025 Update!
While currently undocumented (Connor logged a doc bug that has been accepted) you can,
with 19.18+ make 19c work just like 23ai by running the below for pure http calls.
Interestingly the APEX admin API doesn't allow you to set this value (you get an error that the format needs to start with file:), but the APEX UI does work.

exec utl_http.set_wallet('system:');

SR 3-42740668211 : BUG: apex_instance_admin.set_parameter doesn't allow "system:" as a wallet path in Oracle 19.18+
```
## Slide 71 - Add a self signed cert to the TLS wallet
19c or earlier
```
[oracle@databaseserver DB:orclcon /u01/app/oracle/admin/orclcon/tls_wallet]
orapki wallet add -wallet . –trusted_cert –cert self_signed_cert.crt 
Oracle PKI Tool Release 19.0.0.0.0 – Production
Cannot modify auto-login (sso) wallet
Enter wallet password: <-- Enter wallet password
Operation is successfully completed.
```
23ai or later
```
[root@databaseserver ~ ]
cp self_signed_cert.crt /etc/pki/ca-trust/source/anchors/
[root@databaseserver ~ ]
update-ca-trust
```
## Slide 72 - Let’s revisit the easy button from earlier…

```sql 
begin
   dbms_network_acl_admin.append_host_ace(
      host => '*',
      ace  => xs$ace_type(privilege_list => xs$name_list('connect'),
                          principal_name => apex_application.g_flow_schema_owner,
                          principal_type => xs_acl.ptype_db));
end;
/
```
```
PL/SQL procedure successfully completed.

Database users with the 5 facts (host, port, service name, username and password) can now reach any URL on any host & port combination
```

## Slide 73 - I’d like to manage this with greater granularity
```plsql
begin
   dbms_network_acl_admin.append_host_ace(
      host => 'google.com',
      lower_port => 443,
      upper_port => 443,
      ace  => xs$ace_type(privilege_list => xs$name_list('http'),
                          principal_name => apex_application.g_flow_schema_owner,
                          principal_type => xs_acl.ptype_db));
end;
/
```
```
connect
   Access a network service using utl_tcp,utl_smtp, utl_mail, utl_http, dbms_ldap
http
   http only
smtp 
   smtp only
resolve
   Resolve network IPs or hostnames through utl_inaddr
jdwp
   Java Debug Wire Protocol operations
http_proxy 
   Used in conjunction with http to allow proxy connections

```
## Slide 74 - 02 Reach Out Of The Database (Optional)
You can stop here, and you have still delivered incredible value!
Enable developers to leverage the APEX APIs to reach web services

## Slide 75 - hidden - Solution #3

## Slide 76 - 03 Enable Access Into The Database (Optional)
Let developers use APEX to build and deploy web applications, build REST services, and also enable SQL Developer Web

## Slide 77 - Oracle REST Data Services (ORDS)
ORDS is a Java application that enables toolsets:
Oracle APEX
   The worlds best low code development tool.
Oracle SQL Developer Web (né Oracle Database Actions)
   A browser-based tool with development and monitoring capabilities.
REST Enabled Database Services

Also includes:
GraphQL support
Mongo API for Oracle
mod_plsql ‘like’ functionality to assist with old mod_plsql migrations

## Slide 78 - Oracle REST Data Services (ORDS)
ORDS also includes an embedded web server

## Slide 79 - Where should ords be deployed?
It doesn’t really* matter. ORDS is quite small.
Many thousands of deployments directly on database servers as either the root user or the oracle user.
Many thousands of deployments on web or application servers as the root user, or maybe another user using ORDS standalone.
Many thousands of deployments on application servers deployed to Tomcat or WebLogic.
* If you are building Facebook, then it matters. But you are not building Facebook.

## Slide 80 - User access ports: 443 or 80 or 1024 or higher?
- Port 443 (default https port)
- This should always be the port that end users and developers use to get to your applications.
- Users don’t have to put in a port number and modern browsers expect you to use TLS (https) requests.
- Requires access to a privileged OS account to run the service on Unix OS or you can use iptables/firewalld to redirect 443 to a port ≥ 1024 (see bonus content at the end of the presentation).
- If you don’t have a signed certificate, modern browsers will mark the site insecure.
- Port 80 (default http port)
- You really shouldn’t use this anymore.
- You should redirect port 80 request to port 443 to be polite, but nothing should be accessed on port 80.
- Users don’t have to put a port number in requests, but modern browsers will mark the site insecure, even if you have a signed certificate.
- Port ≥ 1024
- You shouldn’t do this. While it works, it’s ugly.
- All application users have to put in a port number on all requests.
- Doesn’t require a privileged OS account to run the service on port 1024 or higher.
- If you don’t have a signed certificate, modern browsers will mark the site insecure.
## Slide 81 - Security is about to change even more!
We are now going to create new and unlock existing schemas to enable browser-based applications and REST services.
These schemas purely for middleware connection pools, passwords are only for DBAs.

## Slide 82 - Unlocking and creating new accounts?
Profiles Matter!
```sql
SYS@orcl AS SYSDBA> 
select profile
     , limit
                      
  from dba_profiles
 where profile = 'DEFAULT'
   and resource_name = 'PASSWORD_LIFE_TIME';
```
```
PROFILE    LIMIT
DEFAULT    180
“It just stopped working… We didn’t change a thing!”

SYS@orcl AS SYSDBA> alter profile default limit password_life_time unlimited;
Profile DEFAULT altered.
(Or create a new profile and assign it to the ORDS connection pool account, ORDS_PUBLIC_USER)
```
## Slide 83 - Unlock apex_public_user
The Oracle APEX installation documentation currently says to do this:
```sql
SYS@orcl AS SYSDBA> 
alter user apex_public_user identified by oracle_4U account unlock;
```
```
User altered.
However, you really only need to unlock the account and ensure it won’t expire.
I had support create the following bugs:
DOC 38011311 - APEX INSTALLATION GUIDE: APEX_PUBLIC_USER SHOULD NOT HAVE A RANDOM PASSWORD
BUG 38011333 - APEX INSTALLATION GUIDE: APEX_PUBLIC_USER SHOULD BE CREATED WITH "NO AUTHENTICATION"
SR 3-42740624341 : BUG: APEX_PUBLIC_USER is created locked by apexins script, which is incorrect

The below is not officially supported (yet!), but it works!
SYS@orcl AS SYSDBA> alter user apex_public_user account unlock no authentication;
User altered.
```
## Slide 84 - What about apex_rest_config.sql?
I believe this is a doc bug and have filed a doc bug with Oracle Support…
We have many installations using ORDS with static files without running the apex_rest_config.sql script. 
I’ve been told in the past by the APEX team that if you used APEX 5.0 or earlier and you created REST services 
directly in APEX 5.0 or earlier, then this script will make those old services continue to work.
Installation documentation section 6.5.3 Configuring Static File Support

Bug: 38029040 : DOCUMENTATION STATES "YOU MUST RUN APEX_REST_CONFIG.SQL" WHICH MAY BE INCORRECT

## Slide 85 - Download ORDS
https://www.oracle.com/database/sqldeveloper/technologies/db-actions/download/
or
https://download.oracle.com/otn_software/java/ords/ords-latest.zip
or
Just google "download oracle ords"

## Slide 86 - Download ORDS source
```
[root@applicationserver /usr/local/src/oracle/ords]
wget https://download.oracle.com/otn_software/java/ords/ords-25.3.0.267.128.zip
--2025-10-15 10:13:19--  https://download.oracle.com/otn_software/java/ords/ords-25.3.0.267.128.zip
Resolving download.oracle.com (download.oracle.com)... 23.208.188.122
Connecting to download.oracle.com (download.oracle.com)|23.208.188.122|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 148766279 (142M) [application/zip]
Saving to: ‘ords-25.3.0.267.128.zip’
ords-25.3.0.267.128.zip   100%[=================================>] 141.87M   124MB/s    in 1.1s
2025-10-15 10:13:20 (124 MB/s) - ‘ords-25.3.0.267.128.zip’ saved [148766279/148766279]
```

## Slide 87 - Create ORDS directories
```
[root@applicationserver ~]
mkdir -p /opt/ords/25.3       <-- Runtime
[root@applicationserver ~]
mkdir -p /etc/ords/25.3       <-- Configuration
[root@applicationserver ~]
mkdir -p /var/www/html/i      <-- Document Root (without the i) & APEX images (with the i)
[root@applicationserver ~]
mkdir -p /var/log/ords/25.3   <-- Logs (optional)
Windows? d:\ords_runtime\25.3, d:\ords_configuration\25.3, d:\ords_document_root\i, d:\ords_logs\25.3
```
## Slide 88 - Choose an option for APEX static images
1. Use the Oracle Content Delivery Network
2. Deploy (and patch) the APEX images directly on your ORDS server

## Slide 89 - Option 1: Use Oracle's content delivery (preferred)
```
[oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2/apex/utilities]
```
sql sys@orcl as sysdba
```sql
SYS@orcl AS SYSDBA> 
@reset_image_prefix
Enter the Oracle APEX image prefix [/i/] https://static.oracle.com/cdn/apex/24.2.10/
...Changing Oracle APEX image prefix
                             NEW_IMAGE_PREFIX
_____________________________________________
https://static.oracle.com/cdn/apex/24.2.10/

PL/SQL procedure successfully completed.
...Recreate APEX global
PL/SQL procedure successfully completed.
Commit complete.
Image Prefix update complete
;
```
## Slide 90 - Option 2: Manually maintain apex images
```
[root@applicationserver /var/www/html/i]
cp -R /usr/local/src/oracle/apex/24.2/apex/images/* .
```
```
[root@applicationserver /var/www/html/i]
\cp -R /usr/local/src/oracle/apex/24.2/37366599/images/* .
Images can be anywhere… But /var/www/html is the default Unix place for files that are served to web users. 
APEX uses /i/ as the default images location, so an i directory in /var/www/html is the ‘right’ place to put the images.
The \cp (instead of just cp) in the 2nd command stops the prompts for overwriting the files as the root user typically has cp aliased to "cp -i".
```
## Slide 91 - Create ORDS runtime
```
[root@applicationserver /opt/ords/25.3]
unzip -q /usr/local/src/oracle/ords/ords-25.3.0.100.1652.zip
```
```
[root@applicationserver /opt/ords/25.3]
ll
total 134556
drwxr-xr-x 2 root root      4096 Sep 24 17:29 bin
drwxr-xr-x 3 root root      4096 Sep 24 17:29 docs
drwxr-xr-x 8 root root      4096 Aug 14 00:43 examples
drwxr-xr-x 2 root root      4096 Aug 14 00:43 icons
drwxr-xr-x 3 root root      4096 Aug 14 00:43 lib
-rw-r--r-- 1 root root      5993 Aug 14 15:13 LICENSE.txt
drwxr-xr-x 3 root root      4096 Aug 14 17:29 linux-support
-rw-r--r-- 1 root root       210 Aug 14 00:43 NOTICE.txt
-rw-r--r-- 1 root root 137732387 Sep 24 17:29 ords.war
drwxr-xr-x 4 root root      4096 Aug 14 00:43 scripts
-rw-r--r-- 1 root root       365 Aug 14 00:43 THIRD-PARTY-LICENSES.txt
```
## Slide 92 - ORDS runtime details
```
[root@applicationserver /opt/ords/25.3]
tree bin
bin
├── ords              <-- Unix executable
├── ords.exe          <-- Windows executable
└── ords-metrics      <-- Oracle Cloud Infrastructure (OCI) monitoring tool
[root@applicationserver /opt/ords/25.3]
# tree scripts
scripts
├── installer
│   ├── apex_ords_app_con_grants.sql
│   ├── ords_installer_privileges.sql  <-- If you want to install ORDS but can’t use SYS
│   └── ords_set_editioning.sql
└── migrate
    ├── ords_manual_migrate.sql
    ├── ords_manual_migrate_workspace.sql
    ├── ords_migrate_apex_rest.sql
    ├── ords_migrate_report.sql
    └── ords_migrate_workspace_rest.sql
```

## Slide 93 - Configure ORDS
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 install
ORDS: Release 25.3 Production on Wed Oct 15 18:01:20 2025
Copyright (c) 2010, 2025, Oracle.
Configuration:
  /etc/ords/25.3
The configuration folder /etc/ords/25.3 does not contain any configuration files.
```
Oracle REST Data Services - Interactive Install
  Enter a number to select the database connection type to use
    [1] Basic (host name, port, service name)
    [2] TNS (TNS alias, TNS directory)
    [3] Custom database URL
  Choose [1]: 1
  Enter the database host name [localhost]: databaseserver.talan.com
  Enter the database listen port [1521]: 1521
  Enter the database service name [orcl]: orcl.talan.com
  Provide database user name with administrator privileges.
    Enter the administrator username: sys
  Enter the database password for SYS AS SYSDBA:
Retrieving information.
ORDS is not installed in the database. ORDS installation is required.

```
## Slide 94 - Configure ORDS (continued)
```
  Enter a number to update the value or select option A to Accept and Continue
    [1] Connection Type: Basic
    [2] Basic Connection: HOST=databaseserver.talan.com PORT=1521 SERVICE_NAME=orcl.talan.com
           Administrator User: SYS AS SYSDBA
    [3] Database password for ORDS runtime user (ORDS_PUBLIC_USER): <generate>
    [4] ORDS runtime user and schema tablespaces:  Default: SYSAUX Temporary TEMP
    [5] Additional Feature: Database Actions
    [6] Configure and start ORDS in Standalone Mode: Yes
    [7]    Protocol: HTTP
    [8]       HTTP Port: 8080
    [9]   APEX static resources location:
    [A] Accept and Continue - Create configuration and Install ORDS in the database
    [Q] Quit - Do not proceed. No changes
  Choose [A]:

```
## Slide 95 - Configure ORDS (continued)
```
  Enter a number to update the value or select option A to Accept and Continue
    [1] Connection Type: Basic
    [2] Basic Connection: HOST=databaseserver.talan.com PORT=1521 SERVICE_NAME=orcl.talan.com
           Administrator User: SYS AS SYSDBA
    [3] Database password for ORDS runtime user (ORDS_PUBLIC_USER): <generate>
    [4] ORDS runtime user and schema tablespaces:  Default: SYSAUX Temporary TEMP
    [5] Additional Feature: Database Actions
    [6] Configure and start ORDS in Standalone Mode: Yes
    [7]    Protocol: HTTPS
    [8]       HTTPS Port: 443
    [9]    Certificate Type: Use Self-Signed Certificate  <-- Signed is MUCH better
    [10]      SSL Hostname: applicationserver.talan.com
    [11]   APEX static resources location: /var/www/html/i
    [A] Accept and Continue - Create configuration and Install ORDS in the database
    [Q] Quit - Do not proceed. No changes
  Choose [A]: A

```
## Slide 96 - ORDS is now running
```
The setting named: db.hostname was set to: databaseserver.talan.com in configuration: default
The setting named: db.port was set to: 1521 in configuration: default
The setting named: db.servicename was set to: orcl.talan.com in configuration: default
The setting named: plsql.gateway.mode was set to: proxied in configuration: default
The setting named: db.username was set to: ORDS_PUBLIC_USER in configuration: default
The setting named: db.password was set to: ****** in configuration: default
The setting named: feature.sdw was set to: true in configuration: default
The global setting named: database.api.enabled was set to: true
The setting named: restEnabledSql.active was set to: true in configuration: default
The global setting named: standalone.https.port was set to: 443
The global setting named: standalone.https.host was set to: applicationserver.talan.com
The global setting named: standalone.static.path was set to: /var/www/html/I
The global setting named: standalone.doc.root was set to: /etc/ords/25.3/global/doc_root
The setting named: security.requestValidationFunction was set to: ords_util.authorize_plsql_gateway in configuration: default
2025-10-15T21:29:14.752Z INFO        Created folder /opt/ords/25.3/bin/logs
2025-10-15T21:29:14.753Z INFO        The log file is defaulted to the current working directory located at /opt/ords/25.3/bin/logs
2025-10-15T21:29:14.843Z INFO        Installing Oracle REST Data Services version 25.3.0.r1001652 in ORCL
2025-10-15T21:29:16.402Z INFO        ... Verified database prerequisites
2025-10-15T21:29:16.671Z INFO        ... Created Oracle REST Data Services proxy user
2025-10-15T21:29:17.097Z INFO        ... Created Oracle REST Data Services schema
2025-10-15T21:29:17.654Z INFO        ... Granted privileges to Oracle REST Data Services
2025-10-15T21:29:20.332Z INFO        ... Created Oracle REST Data Services database objects
2025-10-15T21:29:32.401Z INFO        Completed installation for Oracle REST Data Services version 25.3.0.r1001652. Elapsed time: 00:00:17.495
2025-10-15T21:29:32.452Z INFO        Completed configuring PL/SQL gateway user for Oracle REST Data Services version 25.3.0.r1001652. Elapsed time: 00:00:00.50
2025-10-15T21:29:32.455Z INFO        Log file written to /opt/ords/25.3/bin/logs/ords_install_2025-10-15_212914_75401.log
2025-10-15T21:29:34.235Z INFO        HTTP and HTTP/2 cleartext listening on host: 0.0.0.0 port: 8080
2025-10-15T21:29:34.235Z INFO        HTTPS listening on host: 0.0.0.0 port: 443
2025-10-15T21:29:34.266Z INFO        Disabling document root because the specified folder does not exist: /etc/ords/25.3/global/doc_root
2025-10-15T21:29:34.267Z INFO        Default forwarding from / to contextRoot configured.
2025-10-15T21:29:37.011Z INFO        Configuration properties for: |default|lo|
db.servicename=orcl.talan.com
db.hostname=ora-rhel8.talan.com
db.password=******
standalone.https.host=applicationserver.talan.com
conf.use.wallet=true
security.requestValidationFunction=ords_util.authorize_plsql_gateway
database.api.enabled=true
db.username=ORDS_PUBLIC_USER
standalone.static.path=/var/www/html/I
restEnabledSql.active=true
resource.templates.enabled=false
plsql.gateway.mode=proxied
db.port=1521
feature.sdw=true
standalone.https.port=443
config.required=true
db.connectionType=basic
standalone.doc.root=/etc/ords/25.3/global/doc_root
2025-10-15T21:29:37.012Z WARNING     *** jdbc.MaxLimit in configuration |default|lo| is using a value of 10, this setting may not be sized adequately for a production environment ***
2025-10-15T21:29:37.298Z INFO
Mapped local pools from /etc/ords/25.3/databases:
  /ords/                              => default                        => VALID
2025-10-15T21:29:37.446Z INFO        Oracle REST Data Services initialized
racle REST Data Services version : 25.3.0.r1001652
Oracle REST Data Services server info: jetty/12.0.13
Oracle REST Data Services java info: Java HotSpot(TM) 64-Bit Server VM  (build: 20.0.1+9-29 mixed mode, sharing)



```
## Slide 97 - What happened in our configuration directory
```
[root@applicationserver ~]
tree /etc/ords/25.3
/etc/ords/25.3
├── databases
│   └── default
│       ├── pool.xml          <-- Database host/port/service and proxied username (ords_public_user)
│       └── wallet    
│           └── cwallet.sso   <-- Encrypted password for ords_public_user
└── global
    ├── settings.xml          <-- General ORDS properties
    └── standalone            <-- Directory created if you start ORDS standalone with self-signed certs
        ├── self-signed.key   <-- Generated self-signed certificate key
        └── self-signed.pem   <-- Generated self-signed certificate
```
## Slide 98 - What is in pool.xml?
```
[root@applicationserver /etc/ords/25.3/databases/default]
cat pool.xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
<properties>
<comment>Saved on Wed Oct 15 21:29:14 UTC 2025</comment>
<entry key="db.connectionType">basic</entry>
<entry key="db.hostname">databaseserver.talan.com</entry>
<entry key="db.port">1521</entry>
<entry key="db.servicename">orcl.talan.com</entry>
<entry key="db.username">ORDS_PUBLIC_USER</entry>
<entry key="feature.sdw">true</entry>
<entry key="plsql.gateway.mode">proxied</entry>
<entry key="restEnabledSql.active">true</entry>
<entry key="security.requestValidationFunction">ords_util.authorize_plsql_gateway</entry>
</properties>
```
## Slide 99 - What is in settings.xml?
```
[root@applicationserver /etc/ords/25.3/global]
cat settings.xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
<properties>
<comment>Saved on Wed Oct 15 21:29:14 UTC 2025</comment>
<entry key="database.api.enabled">true</entry>
<entry key="standalone.doc.root">/etc/ords/25.3/global/doc_root</entry>
<entry key="standalone.https.host">applicationserver.talan.com</entry>
<entry key="standalone.https.port">443</entry>
<entry key="standalone.static.path">/var/www/html/i</entry>
</properties>
```
## Slide 100 - ORDS works!
## Slide 101 - Create an APEX admin user and password
```
- ```
- [oracle@databaseserver DB:orclcon /usr/local/src/oracle/apex/24.2/apex]
- sql sys@orcl as sysdba
- SYS@orcl AS SYSDBA>
- @apxchpwd
- ...set_appun.sql
- ================================================================================
- This script can be used to change the password of an Oracle APEX
- instance administrator. If the user does not yet exist, a user record will be
- created.
- ================================================================================
- Enter the administrator's username [ADMIN] ADMIN
- User "ADMIN" does not yet exist and will be created.
- ```
- Enter ADMIN's email [ADMIN] richard.soule@talan.com
- Enter ADMIN's password [] ************************
- Created instance administrator ADMIN.
- ```sql
- SYS@orcl AS SYSDBA> exit
- ;
- ```
```
## Slide 102 - Login to APEX
## Slide 103 - Success!
## Slide 104 - Service URLs
- - ORDS Landing Page
- - https://yourserver.com
- - Oracle APEX
- - https://yourserver.com/ords/apex
- - Oracle SQL Developer Web (né Oracle Database Actions)
- - https://yourserver.com/ords/sql-developer
- - REST Enabled Database Services
- - https://yourserver.com/ords/bookstore/api/catalog
## Slide 105 - Cool/Good URLs
```
- In 1998 Sir Tim Berners Lee wrote about what makes a cool URL.*
- Literally nothing has changed about good URLs since then.
- NOTHING.
- https://www.w3.org/Provider/Style/URI
- *At the time, there was confusion about URI vs. URL, and there still is… see https://danielmiessler.com/study/difference-between-uri-url/ for details if you are curious.
```
## Slide 106 - Default service URLs are bad according to Sir Tim
- - Oracle APEX
- - https://yourserver.com/ords/apex
- - Oracle SQL Developer Web (né Oracle Database Actions)
- - https://yourserver.com/ords/sql-developer
- - REST Enabled Database Services
- - https://yourserver.com/ords/bookstore/api/catalog
## Slide 107 - Let’s fix those URLs…
- - Oracle APEX
- - https://yourserver.com/app/apex
- - Oracle SQL Developer Web (né Oracle Database Actions)
- - https://yourserver.com/app/sql-developer
- - REST Enabled Database Services
- - https://yourserver.com/app/bookstore/api/catalog
## Slide 108 - …and other things with poor defaults
- standalone.doc.root=/etc/ords/25.3/global/doc_root
- 2025-10-15T21:29:37.012Z WARNING     *** jdbc.MaxLimit in configuration |default|lo| is using a value of 10, this setting may not be sized adequately for a production environment ***
- 2025-10-15T21:29:37.298Z INFO
- Mapped local pools from /etc/ords/25.3/databases:
- /ords/                              => default                        => VALID
- 2025-10-15T21:29:37.446Z INFO        Oracle REST Data Services initialized
- racle REST Data Services version : 25.3.0.r1001652
- Oracle REST Data Services server info: jetty/12.0.13
- Oracle REST Data Services java info: Java HotSpot(TM) 64-Bit Server VM  (build: 20.0.1+9-29 mixed mode, sharing)
## Slide 109 - Stop ORDS
- conf.use.wallet=true
- security.requestValidationFunction=ords_util.authorize_plsql_gateway
- database.api.enabled=true
- db.username=ORDS_PUBLIC_USER
- standalone.static.path=/var/www/html/I
- restEnabledSql.active=true
- resource.templates.enabled=false
- plsql.gateway.mode=proxied
- db.port=1521
- feature.sdw=true
- standalone.https.port=443
- config.required=true
- db.connectionType=basic
- standalone.doc.root=/etc/ords/25.3/global/doc_root
- 2025-10-15T21:29:37.012Z WARNING     *** jdbc.MaxLimit in configuration |default|lo| is using a value of 10, this setting may not be sized adequately for a production environment ***
- 2025-10-15T21:29:37.298Z INFO
- Mapped local pools from /etc/ords/25.3/databases:
- /ords/                              => default                        => VALID
- 2025-10-15T21:29:37.446Z INFO        Oracle REST Data Services initialized
- racle REST Data Services version : 25.3.0.r1001652
- Oracle REST Data Services server info: jetty/12.0.13
- Oracle REST Data Services java info: Java HotSpot(TM) 64-Bit Server VM  (build: 20.0.1+9-29 mixed mode, sharing)
- ^C <-- Ctrl-c to kill the running process
## Slide 110 - Reconfigure ords settings
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set standalone.doc.root /var/www/html
ORDS: Release 25.3 Production on Wed Oct 15 15:27:16 2025
Copyright (c) 2010, 2025, Oracle.
Configuration:
  /etc/ords/25.3[root@applicationserver /opt/ords/25.3/bin]
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set standalone.context.path /app
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set jdbc.InitialLimit 21
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set jdbc.MinLimit 21
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set jdbc.MaxLimit 21
```
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set standalone.access.log /var/log/ords/25.3
```
```
[root@applicationserver /opt/ords/25.3/bin]
# ./ords --config /etc/ords/25.3 config set standalone.access.log.retainDays 5
```
## Slide 111 - Configure ords directories to be more maintainable
Today
```
[root@applicationserver /opt/ords]
ln -s 25.3 latest
```
```
[root@applicationserver /opt/ords]
cd /etc/ords
```
```
[root@applicationserver /etc/ords]
ln -s 25.3 latest
```
The Future
```
[root@applicationserver /opt/ords]
unlink latest
```
```
[root@applicationserver /opt/ords]
ln -s 26.1 latest
```
```
[root@applicationserver /opt/ords]
cd /etc/ords
```
```
[root@applicationserver /etc/ords]
unlink latest
```
```
[root@applicationserver /etc/ords]
ln -s 26.1 latest
```
## Slide 112 - Restart and monitor ORDS
```
[root@applicationserver ~]
nohup /opt/ords/latest/bin/ords --config /etc/ords/latest serve >> /var/log/ords/25.3/ords-serve.log 2>&1 &
[1] 2263594
```
```
[root@applicationserver ~]
tail -f /var/log/ords/25.3/ords-serve.log
```
Mapped local pools from /etc/ords/latest/databases:
  /app/                               => default                        => VALID
2025-10-15T17:08:43.508Z INFO        Oracle REST Data Services initialized
Oracle REST Data Services version : 25.3.0.r1001652
Oracle REST Data Services server info: jetty/12.0.13

## Slide 113 - It works!

## Slide 114 - What schemas changes after APEX & ORDS are installed?
```sql
SYS@orcl AS SYSDBA> 
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
   where username like 'APEX%'
      or username like 'ORDS\_%' escape '\'
      or username like 'FLOWS%'
order by username;
```
```
USERNAME              ACCOUNT_STATUS    EXPIRY_DATE    DEFAULT_TABLESPACE    PROFILE    INITIAL_RSRC_CONSUMER_GROUP    AUTHENTICATION_TYPE    ORACLE_MAINTAINED
_____________________ _________________ ______________ _____________________ __________ ______________________________ ______________________ ____________________
APEX_240200           LOCKED                           SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_ROUTER    OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_USER      OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               Y
FLOWS_FILES           LOCKED                           SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
ORDS_METADATA         OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   N
ORDS_PUBLIC_USER      OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               N
6 rows selected.

Two new locked accounts: 
APEX_240200
FLOWS_FILES
Four new unlocked accounts, two with passwords:
APEX_PUBLIC_ROUTER
APEX_PUBLIC_USER  (has password, but doesn’t need it)
ORDS_PUBLIC_USER  (has password)
ORDS_METADATA
```
## Slide 115 - What components do you have after APEX & ORDS are installed?
```sql
SYS@orcl AS SYSDBA> 
  select comp_name
       , version_full
       , status
       , schema
    from dba_registry
order by comp_name;
```
```
COMP_NAME                             VERSION_FULL    STATUS        SCHEMA
_____________________________________ _______________ _____________ __________
JServer JAVA Virtual Machine          19.28.0.0.0     VALID         SYS
OLAP Analytic Workspace               19.28.0.0.0     VALID         SYS
Oracle APEX                           24.2.10         VALID         APEX_240200
Oracle Database Catalog Views         19.28.0.0.0     VALID         SYS
Oracle Database Java Packages         19.28.0.0.0     VALID         SYS
Oracle Database Packages and Types    19.28.0.0.0     VALID         SYS
Oracle OLAP API                       19.28.0.0.0     VALID         OLAPSYS
Oracle Real Application Clusters      19.28.0.0.0     OPTION OFF    SYS
Oracle Text                           19.28.0.0.0     VALID         CTXSYS
Oracle Workspace Manager              19.28.0.0.0     VALID         WMSYS
Oracle XDK                            19.28.0.0.0     VALID         SYS
Oracle XML Database                   19.28.0.0.0     VALID         XDB
Spatial                               19.28.0.0.0     VALID         MDSYS
13 rows selected.

Still 1 new component, ORDS isn’t a component
```
## Slide 116 - How many public synonyms after APEX & ORDS are installed?
```sql
SYS@orcl AS SYSDBA> 
select to_char(count(*),'99,999') as "Total Public Synonyms"
  from dba_synonyms;
```
```
Total Public Synonyms
________________________
 12,723

746 new public synonyms
```
## Slide 117 - Tablespaces after APEX & ORDS are installed

```sql
SYS@orcl AS SYSDBA> 
   with tablespace_bytes_free
        as (select tablespace_name, sum(bytes) as bytes_free
              from dba_free_space
          group by tablespace_name)
      , tablespace_allocated_and_max
        as (select tablespace_name, sum(bytes) as bytes_alloc
                 , sum(decode(autoextensible, 'YES', maxbytes
                                             , 'NO' , bytes))  as maxbytes
              from dba_data_files
          group by tablespace_name)
select tablespace_name as "Tablespace Name"
     , round(bytes_alloc / 1024 / 1024)                        as "Allocated (MB)"
     , round(nvl(bytes_free, 0) / 1024 / 1024)                 as "Free (MB)"
     , round((bytes_alloc - nvl(bytes_free, 0)) / 1024 / 1024) as "Used (MB)"
     , round((nvl(bytes_free, 0) / bytes_alloc) * 100)         as "% Free"
     , 100 - round((nvl(bytes_free, 0) / bytes_alloc) * 100)   as "% Used"
     , to_char(round(maxbytes/1024/1024),'99,999')             as "Max Size (MB)"
  from tablespace_bytes_free
  join tablespace_allocated_and_max using (tablespace_name);
```
```
Tablespace Name       Allocated (MB)    Free (MB)    Used (MB)    % Free    % Used Max Size (MB)
__________________ _________________ ____________ ____________ _________ _________ ________________
SYSTEM                           600            1          599         0       100  32,768
SYSAUX                           775           42          733         5        95  32,768
UNDOTBS1                         345          302           43        87        13  32,768
USERS                              5            4            1        80        20  32,768

About 400 new Allocated MB
 and about 394 new Used MB
```
## Slide 118 - 03 Enable Access Into The Database (Optional)
Let developers use APEX to build and deploy web applications, build REST services, and also enable SQL Developer Web

## Slide 119 - SQL Developer Web

## Slide 120 - First REST enable schemas
```
- ```sql
- SYS@orcl AS SYSDBA>
- create user rich identified by rich;
- ```
- ```
- User RICH created.
- SYS@orcl AS SYSDBA>
- grant dba to rich;
- Grant succeeded.
- SYS@orcl AS SYSDBA>
- create user bob identified by bob;
- User BOB created.
- SYS@orcl AS SYSDBA>
- grant create session to bob;
- Grant succeeded.
- SYS@orcl AS SYSDBA>
- exec ords_admin.enable_schema(p_schema => 'rich');
- PL/SQL procedure successfully completed.
- SYS@orcl AS SYSDBA>
- exec ords_admin.enable_schema(p_schema => 'bob', p_url_mapping_pattern => 'coolguy');
- PL/SQL procedure successfully completed.
- ```
```
## Slide 121 - What does the database tell us about rest schemas?
```
- ```sql
- SYS@orcl AS SYSDBA>
- select parsing_schema
- , status
- , auto_rest_auth
- , pattern
- , type
- from dba_ords_schemas s
- join dba_ords_url_mappings u
- on s.url_mapping_id = u.id;
- ```
- ```
- PARSING_SCHEMA    STATUS     AUTO_REST_AUTH    PATTERN    TYPE
- _________________ __________ _________________ __________ ____________
- RICH              ENABLED    DISABLED          rich       BASE_PATH
- BOB               ENABLED    DISABLED          coolguy    BASE_PATH
- ```
```
## Slide 122 - Logging in...
## Slide 123 - Sweet stuff! Including new to 25.3 dark mode
## Slide 124 - Sweet stuff!
## Slide 125 - Sweet stuff!
## Slide 126 - AGENDA
- We have covered three main topics:
- The Pre-APEX Database
- Install APEX Component (REQUIRED)
- Reach Out Of The Database (Optional)
- Enable Access Into The Database (Optional)
## Slide 127 - hidden - Conclusion
## Slide 128 - In Conclusion:
- DBAs and System Admins should deliver APEX and ORDS for every database
## Slide 129 - The most important slide
- https://github.com/RichardSoule/APEXandORDSforDBASandSysadmins
## Slide 130 - Thanks
Rich
Soule
(512) 289-4020
richard.soule@talan.com

## Slide 131 - AGENDA
- We have covered three main topics:
- There are also three bonus topics that we won’t have time to cover but are included as references for you:
- 00 The Pre-APEX Database
- 01 Install APEX Component (REQUIRED)
- 02 Reach Out Of The Database (Optional)
- 03 Enable Access Into The Database (Optional)
- 04 Bonus 1: Create APEX Resource Plan (Optional)
- 05 Bonus 2: Create A systemd Service (Optional)
- 06 Bonus 3: Run ORDS As ords Instead Of root (Optional)
## Slide 132 - hidden - Solution #4

## Slide 133 - Bonus 1: Create APEX Resource Plan (Optional)

## Slide 134 - Pluggable default resource plan during the day
```sql
SYS@orcl AS SYSDBA> 
show parameter resource_manager_plan
NAME                                 TYPE        VALUE
------------------------------------ ----------- -------------------------
resource_manager_plan                string
;
```
## Slide 135 - Pluggable default plan during nights & weekends
```sql
SYS@orcl AS SYSDBA> 
show parameter resource_manager_plan
NAME                                 TYPE        VALUE
------------------------------------ ----------- ------------------------------------------
resource_manager_plan                string      SCHEDULER[0x4F87]:DEFAULT_MAINTENANCE_PLAN

Monday through Friday: 10 pm to 2 am
Saturday and Sunday: 6 am to 2 am
;
```
## Slide 136 - Default Resource Manager Plans
INTERNAL_PLAN = Days  
DEFAULT_MAINTENANCE_PLAN = Nights and Weekends

## Slide 137 - Let’s make a new plan!
## Slide 138 - Let’s make a new plan!
## Slide 139 - Let’s make a new plan!
## Slide 140 - Let’s make a new plan!

## Slide 141 - Let’s make a new plan! 
## Slide 142 - Let’s make a new plan!
## Slide 143 - Let’s make a new plan!
## Slide 144 - Let’s make a new plan!
```sql
The below code block appears on slides 141 through 144
   -- Create Consumer Groups
begin
   dbms_resource_manager.clear_pending_area;
   dbms_resource_manager.create_pending_area;
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_HIGH'
                                              , comment        => 'APEX sessions start in this group.');
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_MEDIUM'
                                              , comment        => 'APEX sessions switched to this group after 10 seconds.' );      
   dbms_resource_manager.create_consumer_group( consumer_group => 'APEX_LOW'
                                              , comment        => 'APEX sessions switched to this group after 2 minutes' );    
   dbms_resource_manager.submit_pending_area; 
end;
/
 
   -- Allow Consumer Groups Switching
begin
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_HIGH'
                                                           , grant_option   => FALSE );
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_MEDIUM'
                                                           , grant_option   => FALSE );
    dbms_resource_manager_privs.grant_switch_consumer_group( grantee_name   => 'APEX_PUBLIC_USER'
                                                           , consumer_group => 'APEX_LOW'
                                                           , grant_option   => FALSE );
end;
/

   -- Build a Ratio Based Plan
begin
   dbms_resource_manager.clear_pending_area;
   dbms_resource_manager.create_pending_area;
   dbms_resource_manager.create_plan( plan     => 'APEX_RATIO_PLAN'
                                    , comment  => 'APEX Plan using ratios'
                                    , mgmt_mth => 'RATIO');     
   -- Add APEX Plan Directives to the Plan      
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_HIGH'
                                              , comment               => 'Sessions start in this group.'
                                              , mgmt_p1               => 40 -- ALL sessions start with 40x of APEX_LOW
                                              , switch_group          => 'APEX_MEDIUM'
                                              , switch_time           => 10 -- After 10 seconds, move to APEX_MEDIUM
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_MEDIUM'
                                              , comment               => 'Sessions are switched to this group after 10 seconds.'
                                              , mgmt_p1               => 5 -- Sessions use a medium ratio, 5x of APEX_LOW
                                              , switch_group          => 'APEX_LOW'
                                              , switch_time           => 120 -- After 2 minutes, move to APEX_LOW
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );      
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'APEX_LOW'
                                              , comment               => 'Sessions have been executing for more than 2 minutes'
                                              , mgmt_p1               => 1 -- Sessions use the lowest ratio
                                              , max_utilization_limit => 75 -- Only use a max of 75% of server resources
                                              , switch_group          => 'CANCEL_SQL'
                                              , switch_time           => 1800  -- Sessions are canceled after 30 minutes
                                              , switch_for_call       => TRUE
                                              , switch_estimate       => FALSE );
   -- Add Regular Database Plan Directives to the Plan
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'OTHER_GROUPS'
                                              , comment               => 'The mandatory group'
                                              , mgmt_p1               => 5 );       
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'ORA$AUTOTASK'
                                              , comment               => 'Sub plan for maintenance activity'
                                              , mgmt_p1               => 5 
                                              , max_utilization_limit => 90 ); -- Only use a max of 90% of server resources
   dbms_resource_manager.create_plan_directive( plan                  => 'APEX_RATIO_PLAN'
                                              , group_or_subplan      => 'SYS_GROUP'
                                              , comment               => 'SYS and SYSTEM users'
                                              , mgmt_p1               => 44 );                                               
   -- Configure Initial APEX_PUBLIC_USER Consumer Group
   dbms_resource_manager.set_initial_consumer_group( user           => 'APEX_PUBLIC_USER'
                                                   , consumer_group => 'APEX_HIGH' );  
   dbms_resource_manager.submit_pending_area;  
end;
/

-- Update the maintenance scheduler windows to also run the new plan
begin
  dbms_scheduler.set_attribute( name => 'MONDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'TUESDAY_WINDOW',   attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'WEDNESDAY_WINDOW', attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'THURSDAY_WINDOW',  attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'FRIDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'SATURDAY_WINDOW',  attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
  dbms_scheduler.set_attribute( name => 'SUNDAY_WINDOW',    attribute => 'RESOURCE_PLAN', value => 'APEX_RATIO_PLAN' );
end;
/
  
-- Set the new plan as the active plan
alter system set resource_manager_plan = 'APEX_RATIO_PLAN' comment= '2025-10-15 Rich Soule (512.289.4020) Created and implemented a new plan' scope=both;

```
## Slide 145 - What happened to our APEX & ORDS schemas?
```sql
SYS@orcl AS SYSDBA> 
  select username
       , account_status
       , expiry_date
       , default_tablespace
       , profile
       , initial_rsrc_consumer_group
       , authentication_type
       , oracle_maintained
    from dba_users
   where username like 'APEX%'
      or username like 'ORDS\_%' escape '\'
      or username like 'FLOWS%'
order by username;
```
```
USERNAME              ACCOUNT_STATUS    EXPIRY_DATE    DEFAULT_TABLESPACE    PROFILE    INITIAL_RSRC_CONSUMER_GROUP    AUTHENTICATION_TYPE    ORACLE_MAINTAINED
_____________________ _________________ ______________ _____________________ __________ ______________________________ ______________________ ____________________
APEX_240200           LOCKED                           SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_ROUTER    OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
APEX_PUBLIC_USER      OPEN                             SYSAUX                DEFAULT    APEX_HIGH                      PASSWORD               Y
FLOWS_FILES           LOCKED                           SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   Y
ORDS_METADATA         OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         NONE                   N
ORDS_PUBLIC_USER      OPEN                             SYSAUX                DEFAULT    DEFAULT_CONSUMER_GROUP         PASSWORD               N
6 rows selected.
```
## Slide 146 - hidden - Solution #5

## Slide 147 - 05 Bonus 2: Create A systemd Service (Optional)

## Slide 148 - Stop ORDS we ran with nohup
```
[root@applicationserver ~]
ps -ef | grep ords | grep -v grep
root     2263594 2186386  0 19:36 pts/3    00:00:00 /bin/bash /opt/ords/latest/bin/ords --config 
                                                    /etc/ords/latest serve
root     2263625 2263594 27 19:36 pts/3    00:00:17 java -Doracle.dbtools.cmdline.home=/opt/ords/latest 
                                                    -Duser.language=en -Duser.region=US 
                                                    -Dfile.encoding=UTF-8 -Djava.awt.headless=true 
                                                    -Dnashorn.args=--no-deprecation-warning 
                                                    -Doracle.dbtools.cmdline.ShellCommand=ords 
                                                    -Duser.timezone=UTC -XX:+IgnoreUnrecognizedVMOptions 
                                                    -jar /opt/ords/latest/ords.war --config 
                                                    /etc/ords/latest serve
[root@applicationserver ~]
kill 2263625
[1]+  Exit 143  nohup /opt/ords/latest/bin/ords --config /etc/ords/latest serve >> 
                /var/log/ords/25.3/ords-serve.log 2>&1
```

## Slide 149 - Create ORDS service
```
[root@applicationserver /etc/systemd/system]
# vim ords.service
[Unit]
Description=Oracle REST Data Services
Requires=network.target

[Service]
Type=simple
Environment="JAVA_OPTS=-Dorg.eclipse.jetty.server.Request.maxFormContentSize=3000000 -Xms1024M -Xmx1024M“
ExecStart=/opt/ords/latest/bin/ords --config /etc/ords/latest serve
ExecStop=/usr/bin/kill -HUP ${MAINPID}
User=root

SyslogIdentifier=ords
Restart=always
RestartSec=30
TimeoutStartSec=30
TimeoutStopSec=30

[Install]
WantedBy=multi-user.target

## Slide 150 - Enable & start ORDS service
systemctl daemon-reload   <-- Tell systemd there is a new service to manage
```

```
[root@applicationserver ~]
systemctl enable ords     <-- Start ORDS on server reboot (optional)
Created symlink /etc/systemd/system/multi-user.target.wants/ords.service → /etc/systemd/system/ords.service.
[root@applicationserver ~]
systemctl start ords
```

## Slide 151 - Manage ORDS service - Status
```
[root@applicationserver ~]
systemctl status ords
 ords.service - Oracle REST Data Services
   Loaded: loaded (/etc/systemd/system/ords.service; enabled; vendor preset: disabled)
   Active: active (running) since Wed 2025-05-28 20:00:02 EDT; 2min 51s ago
 Main PID: 2265631 (ords)
    Tasks: 49 (limit: 100445)
   Memory: 617.7M
   CGroup: /system.slice/ords.service
           ├─2265631 /bin/bash /opt/ords/latest/bin/ords --config /etc/ords/latest serve
           └─2265662 java -Doracle.dbtools.cmdline.home=/opt/ords/latest -Duser.language=en

Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: db.connectionType=basic
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.class.version=64.0
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: standalone.access.log=/var/log/ords/25.3
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: 2025-05-29T00:00:09.324Z INFO
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Mapped local pools from /etc/ords/latest/databases:
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]:   /app/                               => default
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: 2025-05-29T00:00:09.486Z INFO  Oracle REST Data Services
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services version : 25.3.0.r1001652
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services server info: jetty/12.0.13
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services java info: Java HotSpot(TM) 64-Bit

```
## Slide 152 - Manage ORDS service – Read logs & stop
```
[root@applicationserver ~]
journalctl -u ords
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.library.path=/usr/java/packages/lib:/usr/lib64:/lib64:/lib:/usr/lib
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.vendor=Oracle Corporation
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.vm.info=mixed mode, sharing
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: stderr.encoding=UTF-8
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.vm.version=20.0.1+9-29
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: standalone.access.log.retainDays=5
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: sun.io.unicode.encoding=UnicodeLittle
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: jdbc.InitialLimit=21
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: db.connectionType=basic
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: java.class.version=64.0
Oct 15 20:00:08 ora-rhel8.broadinstitute.org ords[2265662]: standalone.access.log=/var/log/ords/25.3
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: 2025-05-29T00:00:09.324Z INFO
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Mapped local pools from /etc/ords/latest/databases:
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]:   /app/                               => default                       
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: 2025-05-29T00:00:09.486Z INFO        Oracle REST Data Services initiali
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services version : 25.3.0.r1001652
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services server info: jetty/12.0.13
Oct 15 20:00:09 ora-rhel8.broadinstitute.org ords[2265662]: Oracle REST Data Services java info: Java HotSpot(TM) 64-Bit Server VM

[root@applicationserver ~]
systemctl stop ords
```
## Slide 153 - hidden - Solution #6

## Slide 154 - 06 Bonus 3: Run ORDS As ords Instead Of root (Optional)

## Slide 155 - Where should ords be deployed?
Many thousands of deployments directly on database servers as either the root user or the oracle user.
Many thousands of deployments on web or application servers as the root user, or maybe another user using ORDS standalone.
Many thousands of deployments on application servers deployed to Tomcat or WebLogic.
* If you are building Facebook, then it matters. But you are not building Facebook.

## Slide 156 - 
“I don’t want to run
ORDS standalone as root, 
that’s not secure”

## Slide 157 - ORDS deployment: Who?
"I don't want to run ORDS standalone as root, that's not secure."

## Slide 158 - Create ords os user & change file ownership
```
[root@applicationserver ~]
systemctl stop ords
```
```
[root@applicationserver ~]
useradd ords
```
```
[root@applicationserver ~]
chown –R ords:ords /etc/ords
```
```
[root@applicationserver ~]
chown –R ords:ords /opt/ords
```
```
[root@applicationserver ~]
chown –R ords:ords /var/log/ords
```
## Slide 159 - Modify ords systemd service to use ords os user
```
[root@applicationserver ~]
vim /etc/systemd/system/ords.service
```
```
[root@applicationserver ~]
cat /etc/systemd/system/ords.service
[Unit]
Description=Oracle REST Data Services
Requires=network.target
[Service]
Type=simple
Environment="JAVA_OPTS=-Dorg.eclipse.jetty.server.Request.maxFormContentSize=3000000 -Xms1024M -Xmx1024M“
ExecStart=/opt/ords/latest/bin/ords --config /etc/ords/latest serve
ExecStop=/usr/bin/kill -HUP ${MAINPID}
User=ords

SyslogIdentifier=ords
Restart=always
RestartSec=30
TimeoutStartSec=30
TimeoutStopSec=30

[Install]
WantedBy=multi-user.target
```

## Slide 160 - Create firewalld ORDS service
```
[root@applicationserver ~]
vim /etc/firewalld/services/ords.xml
[root@applicationserver ~]
cat /etc/firewalld/services/ords.xml
<?xml version="1.0" encoding="utf-8"?>
<service>
  <short>ORDS</short>
  <description>Oracle REST Databse Service</description>
  <port protocol="tcp" port="443"/>
  <port protocol="tcp" port="8080"/>
</service>

[root@applicationserver ~]
systemctl start firewalld <-- If firewalld isn’t running yet
[root@applicationserver ~]
firewall-cmd --permanent --add-service ords
success
```

## Slide 161 - Create firewalld forward from 443 to 8080
```
[root@applicationserver ~]
firewall-cmd --add-forward-port=port=443:proto=tcp:toport=8080
success
```
```
[root@applicationserver ~]
firewall-cmd --add-masquerade <-- Hide that ORDS will be on port 8080
success
```
```
[root@applicationserver ~]
firewall-cmd --runtime-to-permanent
success
```
## Slide 162 - Update the port that ORDS uses
```
[root@applicationserver /opt/ords/25.3/bin]
./ords --config /etc/ords/25.3 config set standalone.https.port 8080
```
ORDS: Release 25.3 Production on Wed Oct 15 21:49:17 2025
Copyright (c) 2010, 2025, Oracle.
Configuration:
  /etc/ords/25.3
The global setting named: standalone.https.port was set to: 8080

## Slide 163 - Secure the ords account & restart ords
```
[root@applicationserver ~]
usermod -s /usr/sbin/nologin ords <-- Your nologin might be somewhere else
success
```
```
[root@applicationserver ~]
su - ords
This account is currently not available.
```
```
[root@applicationserver ~]
systemctl daemon-reload    <-- Let systemd know about the User=ords change
```
```
[root@applicationserver ~]
systemctl start ords
```
## Slide 164 - ORDS works!

## Slide 165 - AGENDA
- We are going to cover three main topics:
- There are also three bonus topics that we just covered!
- 00 The Pre-APEX Database
- 01 Install APEX Component (REQUIRED)
- 02 Reach Out Of The Database (Optional)
- 03 Enable Access Into The Database (Optional)
- 04 Bonus 1: Create APEX Resource Plan (Optional)
- 05 Bonus 2: Create A systemd Service (Optional)
- 06 Bonus 3: Run ORDS As ords Instead Of root (Optional)
## Slide 166 - The most important slide
https://github.com/RichardSoule/APEXandORDSforDBASandSysadmins

## Slide 167 - Thanks
Rich Soule
(512) 289-4020
richard.soule@talan.com

## Slide 168 - ODTUG Kscope25 closing slide (This slide was removed for ECOUG)
Don't Forget To Fill Out Your Evals
