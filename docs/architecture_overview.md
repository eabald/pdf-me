# Architectural overview

## Introduction

Main purpose of this document is to lay foundation for system architecture, but in this case considered are only elements of MVP phase. Also content of this document is only preliminary and may final architecture may vary.

## High level overview

There are two main parts of the system. Monolithic frontend application (Homepage an UserPanel) and backend in microservices pattern (all APIs and schedular, database and so on). Solution like this guaranty clear separation of concerns and encapsulation and on the other hand communication between system elements does not pose any problems.

## System elements architecture

1. Api Gateway - system enty point, exposes static files for Homepage an UserPanel, GraphQL api for homepage and panel data and REST API for pdf generating api.

2. Homepage - SSR application, based on content served from GraphQL api, in MVP state based on md files. After that, additional headless CMS system.

3. User panel - SSR or SPA application, connected via GraphQL api.

4. User services:

    * User - user data service
    * Auth - user panel authorization service
    * Limit - user limits service

5. Billing service:

    * Subscription - payment subscriptions service
    * Payment - single payment service
    * Billing - billing data service

6. PDF services:

    * Template - documents templates service
    * Generation - pdf documents generation service
    * Files - files serving service

7. Schedular service

## Summary

Structuring project in this way allows to have clear separation of concerns in each element of system. Also it allows to easily add next elements to the system. Even in different technologies.
