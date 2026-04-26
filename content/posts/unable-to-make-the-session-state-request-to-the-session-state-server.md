---
title: "Unable to make the session state request to the session state server"
date: 2011-03-16T16:56:20
slug: unable-to-make-the-session-state-request-to-the-session-state-server
categories: ["Windows Server 2008"]
tags: ["asp.net state service", "exception stack trace", "iis 7.0 state error", "iis session error", "parameters", "server ports", "session state", "source error", "state request", "state server", "system web", "unhandled exception", "web request"]
aliases: ["/2011/03/16/unable-to-make-the-session-state-request-to-the-session-state-server/"]
---

**Problem:**

*Unable to make the session state request to the session state server. Please ensure that the ASP.NET State service is started and that the client and server ports are the same. If the server is on a remote machine, please ensure that it accepts remote requests by checking the value of HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\aspnet\_state\Parameters\AllowRemoteConnection.*

**Description:** An unhandled exception occurred during the execution of the current web request. Please review the stack trace for more information about the error and where it originated in the code.

**Exception Details:** System.Web.HttpException: Unable to make the session state request to the session state server. Please ensure that the ASP.NET State service is started and that the client and server ports are the same. If the server is on a remote machine, please ensure that it accepts remote requests by checking the value of HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\aspnet\_state\Parameters\AllowRemoteConnection.

**Source Error:**

|  |
| --- |
| `An unhandled exception was generated during the execution of the current web request. Information regarding the origin and location of the exception can be identified using the exception stack trace below.` |

**Stack Trace:**

[HttpException (0x8007274c): Unable to make the session state request to the session state server. Please ensure that the ASP.NET State service is started and that the client and server ports are the same. If the server is on a remote machine, please ensure that it accepts remote requests by checking the value of HKEY\_LOCAL\_MACHINE\SYSTEM\CurrentControlSet\Services\aspnet\_state\Parameters\AllowRemoteConnection.]  
System.Web.SessionState.OutOfProcStateClientManager.MakeRequest(StateProtocolVerb verb, String id, StateProtocolExclusive exclusiveAccess, Int32 timeout, Int32 lockCookie, Byte[] buf, Int32 cb, Int32 networkTimeout, SessionNDMakeRequestResults& results) +512  
System.Web.SessionState.OutOfProcStateClientManager.SetAsyncWorker(String id, SessionStateItem item, Byte[] buf, Int32 length, Boolean inStorage) +57  
System.Web.SessionState.OutOfProcStateClientManager.System.Web.SessionState.IStateClientManager.Set(String id, SessionStateItem item, Boolean inStorage) +142  
System.Web.SessionState.SessionStateModule.OnReleaseState(Object source, EventArgs eventArgs) +465  
System.Web.SessionState.SessionStateModule.OnEndRequest(Object source, EventArgs eventArgs) +43  
System.Web.SyncEventExecutionStep.System.Web.HttpApplication+IExecutionStep.Execute() +60  
System.Web.HttpApplication.ExecuteStep(IExecutionStep step, Boolean& completedSynchronously) +87  
**Solution:**

If you having this problem in IIS 7.x; you can fix this issue with enabling “ASP.NET State Service” from the services. To do so; Follow the bellow steps:

1) Start–> Administrative Tools –> Services

2) Write click over the service shown below and click “start”

![](/images/posts/unable-to-make-the-session-state-request-to-the-session-state-server/asp.net_state.png "asp.net state session")

After doing this, you won’t get the error anymore.

Time to get a fresh breathe 🙂
