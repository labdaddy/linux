##### Definition
So, what is Site Reliability Engineering? According to Ye Ole Google SRE book: “SRE is what happens when you ask a software engineer to design an operations team.” This definition is a bit contested for multiple reasons, not least of which being it implies operations teams are incapable of sound systems design rather than being permanently under-resourced. It’s also contested because it implies all SREs are coding backend systems day-in and day-out, and that’s not even true at Google.

And while Google has thrown quite a bit of money into selling their definition of SRE, the rest of the industry has adopted SRE on its own terms, with results ranging widely from company to company. In my time with the title, I’ve seen SRE refer to:

The team that owns incident response
The team that owns internal deployment tooling
The team that owns the data center
The team that owns reliability processes for all of engineering
The team that owns the container platform
The team that owns the databases
The team that owns the network
The team that owns monitoring
The team that is embedded onto dev teams to own all the things devs don’t want to own
I want to be clear: this guide isn’t about Google SRE. Google SRE is its own flavor of SRE practices and in some ways a completely different discipline. Other large companies may adopt pieces of Google SRE, but I don’t know of anywhere other than Google that practices it fully. If you want to be a Google SRE, that’s perfectly fine. But this post isn’t for that.

So what, then, is the broader definition of SRE? It’s difficult to nail down one definition for all companies in the same way it’s difficult to define Software Engineering for all companies. If Software Engineers are defined by code, then SREs are also SEs. What then, is the difference between an SRE and an SE who is on-call?

If you twist my arm, I would define Site Reliability Engineering as: “the practice of building and maintaining a reliable SaaS platform at scale.” I see SRE as something for companies with large SaaS offerings, usually a high-traffic website and associated services. That is, I take the “Site Reliability” part pretty literally.

(You could argue the need for SREs on large internal services, such as a database, but I would argue in return that such a service is probably supporting a larger customer-facing platform :) ).

A Software Engineer who is on-call understands how their code works, how it can break, and how to fix it. A Site Reliability Engineer understands how that code fits into the larger tapestry of the company’s architecture and tries to set the whole system up for success.

Given this definition, what are some key skill areas for an SRE?

- Software engineering
- Distributed systems design
- Operating systems
- Networking
- Databases
- Security
- Reliability best practices
- Troubleshooting
- Customer support

“That’s a lot!” It is. SRE is a broad discipline, because it takes a lot of skill to run a large, distributed site. In fact, many SREs tend to specialize in one or two of these skills. You’ll find companies often have multiple SRE teams focused on different areas of running its platform. You’ll find teams doing SRE but under a different name, such as Infrastructure Engineering or Production Engineering. You’ll also find companies with SRE teams that aren’t doing SRE work at all. I would encourage you to focus on the work itself and not get too tied up in the actual title. You can put anything on LinkedIn.

##### Realities
Whenever people ask me how to get into SRE, they usually leave off why they want to go there. It seems rude to ask in the moment, but let’s use this time to address some possible misconceptions about the field. Due to the deep marketing of Google’s model vs the broader industry adaptation, there can be a wide difference between Expectation and Reality.

##### Expectation
You get a leather jacket
You’re paid more than the devs
Everyone listens to what you say
You have authority over shipping deadlines and bug priorities
You’re always working on Bleeding Edge World-Spanning Tech
You hardly ever do manual work, just code all the time
You can give up your pager if the on-call is rough
Reality
You are paid the same as the devs
Sometimes less, if you consider on-call burden
You’re on-call for your own stuff
Sometimes the devs’ stuff, too!
You can go months at a time without coding
At the same time, you will be expected to know how to read and diagnose code issues
You may be in charge of reliability, but have no authority to fix it
You will need developed customer support skills to convince developers to adopt best practices for running at scale
These Realities aren’t true everywhere, but they are more true than the Expectations. Some days you’re building tooling for your new fancy platform and other days you’re fighting with Puppet and DNS. You will need to be flexible and build up a wide range of skills to do your job.

Some Other Realities of SRE
Troubleshooting really interesting problems that can’t be solved with StackOverflow
Opportunity to learn a variety of disciplines across the entire software / hardware stack
Experiencing the thrill of at-scale problems, from deploying across thousands of servers to mitigating DDoS attacks
Advancing processes completely new to your company
Honing your communication skills, from internal development process disputes to long and very public incident post-mortems
The trust that comes with being someone who owns and maintains production platforms
Working with engineering professionals at the top of their fields and careers
This is all a very long-winded way of saying: if you are in it for the power and glory, you will likely be disappointed. Become an SRE because the work interests you.

