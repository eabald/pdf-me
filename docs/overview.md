# PDF-ME HIGH LEVEL OVERVIEW

This document contains initial, high level overview of SaaS product PDF-ME. Also this document mainly concentrates on architectural and technical issues of the project. More business oriented issues wil not be rised here. To sum up purpose of this document is to lay down foundation of PDF-ME system, prepare high level plan of development its stages.

## Introduction

This project has two main purposes. First of all to introduce the product, SaaS system providing high availability API allowing to generate pdf for external applications including all necessary elements starting form homepage to API itself. Secondly to create open source solution to utilise own pdf generating api.

Main reason behind that is in significant business need for that kind of solution and lack of similar software available on MIT or Apache licenses. This problem lead to strange solutions like generating pdfs on frontend which may in some case works but in others may produce to unmaintainable solutions.

## Product overview - MVP phase

It's important to note that this overview consider only MVP stage of the system. This section consists list of all system parts needed for this stage with short explanation of its role, without architectural or implementation details.

### Solution overview

Main purpose of the system is to delivery to users SaaS system allowing to generate pdfs in external applications only by providing html templates. In mvp solution user have to add prepared templates in user panel, generates there api keys and connect their application to api using them.

### Homepage

Homepage is least complicated part of whole system, but also is most client facing part of it. In this case it have to be most reliable. It will contain basic product information, pricing and so on. Also it won't be connected with other parts of the system in other than with links. There's nothing fancy in it.

### User Panel

User panel is another client facing element of the system. Its role is to allow user to manage theirs pdfs templates, their limits, generate api keys and access their accounts in general. This part will be strictly connected with other elements of the system like auth, billing and account service.

### Auth service

### Billing service

### Account service

### Pdf generation API

## Architecture

## Development Phases
