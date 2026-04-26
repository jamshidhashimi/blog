---
title: "Domain Name Status Codes"
date: 2011-03-13T11:18:32
slug: domain-name-status-codes
categories: ["Programming General"]
tags: ["domain status codes", "domains"]
aliases: ["/2011/03/13/domain-name-status-codes/"]
---

When searching for domains and looking inside whois pages, i often face to the codes explained below; so i decide to find the detailed explanations for the regarding terms. I successfully find informations through domaintools.com site and you know after that i do the hard operation of c/p 🙂

**ACTIVE**: The registry sets this status. The domain can be modified by the registrar. The domain can be renewed. The domain will be included in the zone if the domain has been delegated to at least one name server.

**REGISTRY-LOCK**: The registry sets this status. The domain can not be modified or deleted by the registrar. The registry must remove the REGISTRY-LOCK status for the registrar to modify the domain. The domain can be renewed. The domain will be included in the zone if the domain has been delegated to at least one name server.

**REGISTRAR-LOCK**: The sponsoring registrar sets this status. The domain can not be modified or deleted. The registrar must remove REGISTRAR-LOCK status to modify the domain. The domain can be renewed. The domain will be included in the zone.

**REGISTRY-HOLD**: The registry sets this status. The domain can not be modified or deleted by the registrar. The registry must remove the REGISTRY-HOLD status for the registrar to modify the domain. The domain can be renewed. The domain will not be included in the zone.

**REGISTRAR-HOLD**: The sponsoring registrar sets this status. The domain can not be modified or deleted. The registrar must remove REGISTRAR-HOLD status to modify the domain. The domain can be renewed. The domain will not be included in the zone.

**REDEMPTIONPERIOD**: The registry sets this status when a registrar requests that the domain name be deleted from the registry and the domain has been registered for more than 5 calendar days (if the delete request is received within 5 days of initial domain registration it will instead be deleted immediately). The domain will not be included in the zone. The domain can not be modified or purged; it can only be restored. Any other registrar requests to modify or otherwise update the domain will be rejected. The domain will be held in this status for a maximum of 30 calendar days.

**PENDINGRESTORE**: The registry sets this status after a registrar requests restoration of a domain that is in REDEMPTIONPERIOD status. The domain will be included in the zone. Registrar requests to modify or otherwise update the domain will be rejected. The domain will be held in this status while the registry waits for the registrar to provide required restoration documentation. If the registrar fails to provide documentation to the registry within 7 calendar days to confirm the restoration request, the domain will revert to REDEMPTIONPERIOD status. The domain status will be set to ACTIVE only if the registrar provides documentation to the registry within 7 calendar days to confirm the restoration request.

**PENDINGDELETE**: The registry sets this status after a domain has been set in REDEMPTIONPERIOD status and the domain has not been restored by the registrar. The domain will not be included in the zone. Once in this status all registrar requests to modify or otherwise update the domain will be rejected. The domain will be purged from the registry database after being in this status for 5 calendar days. ﻿
