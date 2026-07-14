---
layout: index
title: Resume
permalink: /resume
sidebar_link: true
---
# Experience

## Senior Site Reliability Engineer at [Cisco], [Duo Security]

[Cisco]: <https://www.cisco.com>
[Duo Security]: <https://duo.com>

*May 2025 - current*

Python · AWS · Kubernetes · IAM · Security · Monitoring & Alerting · AI Tooling

* Built an automated cross-account EBS snapshot lifecycle service
  spanning 12 AWS regions, safely eliminating the vast majority of
  orphaned build snapshots and a major recurring storage cost
* Hardening the security posture of production: replacing static IAM
  credentials with IAM roles and IRSA across Kubernetes microservices
  for short-lived credentials and simpler rotation
* Onboarded the APJC team into Duo-wide vulnerability management:
  authored documentation, delivered training, and lead the region's
  SLA-driven triage
* Built an AI agent skill that researches otherwise-unassignable
  vulnerability tickets in the live environment (read-only) and
  recommends an owner with rationale and evidence — adopted by the
  entire on-call rotation, cutting investigations from a documented
  two-hour timebox to 5–10 minutes per ticket
* Authored an incident-command review adopted by the team, leading to
  new documentation, training, and clearer paging expectations
* First-responder on-call for a high-availability security SaaS,
  triaging and engaging product teams across US/APJC timezones


## Senior Site Reliability Engineer at [Shopify]

[Shopify]: <https://www.shopify.com/au/about>

*Jan 2023 - May 2025*

Resiliency · Incident Management · Rails · MySQL · GCP · CI/CD · Chaos Engineering

* Incident Manager On Call for the entire platform, commanding scores
  of production incidents affecting millions of online stores —
  aligning responders under pressure and driving to resolution
* Built and launched slow-query detection in CI for Shopify's core
  monolith, attacking the cause of as many as 1-in-5 merchant-impacting
  incidents escalated to SRE — co-presented this work at USENIX
  SREcon25 Americas
* Designed and ran game days: fault injection against internal
  tooling and its dependencies, including a live failover exercise
  for a full Slack outage
* Invested directly in service codebases post-incident: circuit
  breakers, backpressure, alert tuning, and metric/SLO improvements
* Built a second-engineer approval interface for risky operational
  commands, with audit history and a chat-independent path
* On-call through Black Friday/Cyber Monday 2023 and 2024 — US$11.5B
  in merchant sales and databases peaking at 45M queries/second in
  2024 — kept quiet by design via capacity planning, load testing,
  and game days


## Senior Site Reliability Engineer at [Kraken] Digital Asset Exchange

<!-- markdown-link-check-disable-next-line -->
[Kraken]: <https://www.kraken.com>

*Feb 2022 - Oct 2022*

Terraform · Docker · Kubernetes · Nomad · Gitlab CI · Nginx · PHP

- Consolidated and centralised dashboards for the team in Grafana and
  Splunk
- Created Terraform module and Gitlab repository with CI pipelines to
  manage on-call shifts in Pagerduty adhering to infrastructure-as
  code principles
- Led a project to convert homepage and marketing website from Next.js
  server-side generation to server-side rendering (SSG to SSR), using
  Docker Compose, Kubernetes, Nomad, Vault, Nginx, and Prometheus


## Senior DevOps Engineer at [Zendesk], [Answer Bot]

[Zendesk]: <https://zendesk.com>
[Answer Bot]: <https://www.zendesk.com/service/answer-bot/>

*Mar 2019 – Feb 2022*

Ruby · Python · Chef · Kubernetes · AWS · CI/CD · AI/ML

- Hardened and standardised software delivery processes and data
  pipelines
- Migrated legacy Answer Bot product to modern infrastructure: EC2
  instances to Kubernetes, MySQL to Aurora RDS, custom ELK stack to
  Datadog, custom deployment system to Spinnaker


## Software Engineer at [Square], [Cash App]

[Square]: <https://squareup.com>
[Cash App]: <https://cash.app>

*Nov 2017 – Feb 2019*

Ruby · Java · MySQL · Vitess · Cryptocurrency

- Worked on database sharding for the banking ledger, which handles
  tens of thousands of queries per second, tracking over US$100M of
  stored value on behalf of over 10M CashApp customers
- Resolved a Visa compliance escalation under threat of fines:
  traced non-compliant transactions against card-network
  specifications and fixed billing-address data in the ISO 8583
  binary interchange format
- Improved internal tooling for customer support agents and added
  Bitcoin-related functionality


## Infrastructure Engineer at [Marketplacer]

[Marketplacer]: <https://marketplacer.com>

*Nov 2015 – Aug 2017*

Ruby · Go · Docker · AWS · Terraform · Automation · Dev tools

- Migrated infrastructure from dedicated servers to AWS using Terraform
  and Chef, improving reliability
- Migrated from instance backed image uploads to a content-addressable
  storage backed by S3, improving reliability and implicitly
  de-duplicating uploads
- Championed best practices among the development team, such as backing
  CI containers with a Docker registry to simplify updates
- Worked extensively on developer tools such as a command-line
  interface for common development tasks


## Web Developer/DevOps Engineer at [99designs]

[99designs]: <https://99designs.com>

*Aug 2012 - Oct 2015*

PHP · Ruby · DevOps · Continuous deployment

- Full-stack web development using PHP, Ruby and Rails, and Python
- Automated standard operating environment using Vagrant, VirtualBox,
  and Babushka
- Became an expert on internationalisation and localisation of legacy
  web applications
- Conducted review of EC2 instance types in use, improving performance
  for end-users and reducing cost for the business
- Worked on refactoring a very large, monolithic application into
  simple, maintainable services


## Web developer at [Fontis]

[Fontis]: <https://fontis.com.au>

*Nov 2010 – Aug 2012*

PHP · Magento · Customer support

- Full-stack e-commerce web development using PHP, Magento, and Laravel
- Successfully completed Magento Certified Developer Plus certification
- Liaised with and occasionally managed remote developers
- Initiated various productivity-improving workflows, including
  migrating version control from Bazaar to Git, and advocating the use
  of improved task management tools
- Frequently required to quickly come up-to-speed on new codebases,
  including conducting audits and preparing reports for clients and
  internal use



# Talks

## [Tackling Slow Queries: A Practical Approach to Prevention and Correction][talk]

###### [USENIX SREcon25 Americas][srecon], Santa Clara — March 2025

[talk]: <https://www.youtube.com/watch?v=pJkCi7gn5uQ>
[srecon]: <https://www.usenix.org/conference/srecon25americas/presentation/famili>

Co-presented (with Kurni Famili) how Shopify tackles slow database
queries from both directions: catching new queries at CI time before
they reach production, and mining production slow-query logs to drive
corrective work with owning teams.


# Education

## Bachelor of Computer Science with Distinction
## Bachelor of Engineering with Honours 1st Class, Computer and Network Engineering

###### RMIT University
*Feb 2005 – Nov 2010*
