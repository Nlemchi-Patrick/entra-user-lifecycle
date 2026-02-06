\# Entra ID User Lifecycle Automation (No P1/P2)



\## Project Overview

This project demonstrates Identity \& Access Management automation using:

\- Microsoft Entra ID (Free tier)

\- Microsoft Graph PowerShell SDK

\- CSV-driven provisioning

\- GitHub version control



\## Features

✔ Bulk user creation from CSV

✔ Security group assignment

✔ Disable (offboard) users

✔ Script-based automation

✔ Evidence screenshots



\## Folder Structure

scripts/        → PowerShell scripts

data/           → CSV input files

screenshots/    → Proof images

README.md       → Project documentation



\## Scripts

create-users.ps1     → create users

assign-groups.ps1    → add users to groups

disable-user.ps1     → block sign-in



\## How to Run

Connect first:

Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"



Create users:

.\\create-users.ps1



Assign groups:

.\\assign-groups.ps1



Disable user:

.\\disable-user.ps1 -UserPrincipalName john.doe@techtired.onmicrosoft.com



\## Screenshots Included

01-security-groups.png

02-hr-group-overview.png

03-graph-connected.png

04-users-csv.png

05-group-membership.png

06-users-created.png

07-user-disabled.png

08-user-disabled.png

09-github-repo.png



\## Skills Demonstrated

\- IAM lifecycle management

\- Microsoft Graph automation

\- RBAC \& group-based access

\- PowerShell scripting

\- Documentation \& GitHub workflow



entra-user-lifecycle/

│

├── scripts/

│   ├── create-users.ps1

│   ├── assign-groups.ps1

│   └── disable-user.ps1

│

├── data/

│   └── users.csv

│

├── screenshots/

│   └── \*.png

│

└── README.md

