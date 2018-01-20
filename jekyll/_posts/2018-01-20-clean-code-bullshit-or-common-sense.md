---
layout: post
permalink: /:title

title: Clean Code, bullshit or common sense?
---

## Common story

Bob started to work at a new company. Soon he realized his new job would have a
lot to do with a very old and complex legacy system. It was an anemic code
without tests. There wasn't neither any documentation. No explanations about
underlying workflows which should represent the decisions made to solve business
requirements which someday were asked by some stakeholder, were added to the
backlog, implemented and delivered. However, that stakeholder wasn't in the
company any more as well as the first developers.

What should be called the domain was always very coupled to the infrastructure
concerns.. many classes had more than one thousand lines.. methods had so many
if statements creating so many paths to go through.. namespaces 10 levels deep..
a large usage of classes extensions..

Almost every task would be to solve a bug. Some of them were created long time
ago and others were just introduced few weeks ago by a new fix. Trying to
investigate the code history to figure out the reason of some changes and how
they could be related with other parts of the code wasn't even helpful because
the commits weren't well-organized and had poor messages..

For changing a small behavior he had to spend hours debugging and trying to
understand what was written there. After a hole day of work the result sometimes
was changing or adding ~10 lines. Most of this new code was one more if
statement deciding to update some value because it was wrong somehow causing a
bug.. The classes didn't validate themselves.. There were getters and setters
everywhere..

_He was experiencing bad code.._

![Washing bunch of durty dishes](/assets/images/posts/2018-01-20-clean-code-bullshit-or-common-sense-washing-bunch-of-dirty-dishes.jpg)

## Why does it happen so commonly?

Let's start clarifying something: please, don't get me wrong, I don't want to
say simply the code is a $#@& and to blame developers, because it won't lead us
to anything. That is true, we do have a lot of unprofessional developers, but
just blaming isn't the point and we have to consider a broader scenario to get
deeper.

So, why does it happen? Why are we always wading?

There are many factors that contribute to it.. let's picture a company growing,
hiring more employees to grow faster, new developers come in, old developers
leave, the dynamic business changes the requirements quite constantly, the
communication between IT and business has gaps, developers are so focused to
achieve the sprint commitment, the rush is always putting pressure on everyone
working on the project, no one cares to learn about the user-product
relationship, no one cares to write tests, developers cannot design as it seems
not to delivery short term value, TDD is philosophical, the company doesn't
invest time to train its teams, the most valuable practice is what solves the
today's problem, hero culture rises, we always need more logs to try to realise
what is going on, we need to lead the market..

> I could summarize it as the result of _rush and no study_.

Given that scenario, the output bad code is at least compreensive..
unfortunatelly our world isn't a nice place sometimes.

## What is the point then?

I didn't bring you here to give a "because-answer".. anyone working for few
years can guess it..

My goal with this post is to reply the person who has that canned answer when
developers complain about the bad code: _Look, the system works and makes money
to the company. That is what matters and the developers are paid to mantain it_.

Okay.. I see the point.. I understand the message.. the most important thing is
a running software. It sounds like magic and can confort us, developers.
However, we still have a big problem there..

Is it really a running software valuable?

A company which highly depends on new technologies to be running and wants to be
innovative will never achieve its goals when software turns a maintanace issue
instead of pushing up the business. Coming back to the Bob's situation, it is
almost impossible to add or change behaviors of the application. How would be
possible to delivery a new feature which would change the business workflow
without breaking anything else? The risk is too high, the unknown side effects
could be catastrophic and, in this way, the company is trying to survive instead
of being innovative while the competition is out there rising up.

Even worse.. when the mess reaches a point where the developers are fixing just
created bugs by their own changes.. it's hard for me to see the value being
generated. In other words, the job now is to fix the problems just introduced by
the same team.. the team is maintaining itself.. it's just brute force..

> System making money today doesn't mean system still making money in the
> future.

Bad code can break established companies and make startups die early.. **it
isn't because developers aren't the front line that we can't be the fault
reason**.

Clean code, aka having care for code, aka wrinting tests first, is the way to
achieve a software the business can truthly grow with. Let's study, let's
improve our craft, let's learn how to manage the rush.

> As developers, it's our responsability to write clean code..

Have you ever asked yourself what your manager expects from you? Would you say
short time result or long time result?

I know, I know.. the perfection isn't reachable.. sometimes we have to work on
urgent issues.. nevertheless my point is we shouldn't conform ourselves to the
bad code just going along with it..

## What does my experience say?

I do have a real case where we've spent more time in the begining to achieve
well parity dev-prod environments, completely isolated database for each
instance of the running system, end-to-end tests for the hole application,
feature and unit tests for each codebase, automated deployment, hexagonal
archtecture.. well.. a lot of themes which are unreachable and philosophical for
many.. a lot of bullshit for them..

![TDD chaos-vs-time graph](/assets/images/posts/2018-01-20-clean-code-bullshit-or-common-sense-TDD-chaos-time-graph.jpg)

It wasn't easy.. it was challenging. However the result of our work turned into
a product with almost zero bug rate. When a new bug is discovered, a new test
scenario is written. Deployments are fast, safe and can be executed anytime. New
features are easily to add and the old ones easy to change.. that are the TDD
benefits.. that is an agile team!

> We should fight against bad code and always do our best :) .. there is only
> one error: not to try it..

Here are the referneces:

* Robert C Martin, 2008. [Clean Code: A Handbook of Agile Software Craftsmanship](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)
* Nat Pryce; Steve Freeman, 2009. [Growing Object-Oriented Software, Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627)
