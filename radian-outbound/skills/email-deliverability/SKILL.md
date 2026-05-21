---
name: email-deliverability
description: Monitor and protect outbound email deliverability — domain reputation, spam-folder placement, warm-up health, bounce rate. Use weekly, when reply rates suddenly drop, or when the user says "are we landing in spam", "deliverability check", or "domain reputation".
---

# email-deliverability

## When to use

- Weekly health check (auto-run)
- Sudden drop in reply rates (often invisibly caused by spam folder)
- New sender domain coming online (warm-up monitoring)
- After a bulk-send incident (post-mortem)
- Pre-launch of a new outbound team

## Core principle

**17% of legitimate B2B emails land in spam — silently** (Validity / Litmus). Reply rates collapse and the rep doesn't know for weeks. Outbound at scale requires active deliverability management, not "set and forget."

## What to monitor

| Metric | Healthy band | Red flag |
|---|---|---|
| Domain reputation (Google Postmaster) | High | Medium / Low |
| Inbox placement rate (across major ISPs) | >90% | <80% |
| Bounce rate | <2% | >5% |
| Complaint rate | <0.1% | >0.3% |
| Unsubscribe rate | <0.5% | >1% |
| Engagement rate (open + click) | Trending up | Trending down |
| Sender domain age | >6 months | <30 days w/o warm-up |
| SPF / DKIM / DMARC | All pass | Any fail |

## Workflow

1. **Pull deliverability data**
   - Google Postmaster Tools (Gmail data)
   - Microsoft SNDS (Outlook data)
   - Inbox placement tests (Glock Apps / MailReach / via seed list)
   - SEP / email tool bounce + complaint logs

2. **Compute composite health score**
   - Per sender domain
   - Per ISP (Gmail / Outlook / Yahoo / others)

3. **Detect anomalies**
   - Reputation drops
   - Inbox placement dropping <80% on any major ISP
   - Bounce rate spiking
   - Engagement collapsing (often the leading indicator)

4. **Recommend actions per anomaly**
   - List hygiene (cleanse unverified emails)
   - Sending volume throttle
   - Warm-up boost
   - Content audit (spam-trigger words)
   - Domain rest (pause sends for 7-14d)
   - DNS audit (SPF/DKIM/DMARC)

5. **Weekly report to outbound + RevOps lead**

## Output format

```markdown
*Email Deliverability Report — week of [date]*

*Overall health:* 🟢 Good / 🟡 Watch / 🔴 Action required

*Sender domains:*
| Domain | Rep score | IBP Gmail | IBP Outlook | Bounce | Volume |
|---|---|---|---|---|---|
| outbound.acme.com | High | 95% | 88% | 1.4% | 2,400 |
| sales.acme.io | Medium 🟡 | 78% 🟡 | 92% | 3.1% 🟡 | 1,100 |

*Anomalies:*
🟡 sales.acme.io reputation dropped to Medium on Gmail
   - Likely cause: 3 bounces from invalid emails on Mon batch
   - Action: cleanse list with Neverbounce; throttle to 50/day for 7d

*Action items:*
- ...
```

## Connectors

- Google Postmaster Tools
- Microsoft SNDS
- Inbox placement test tool (Glock Apps / MailReach)
- SEP / email tool (Outreach / Salesloft / Apollo / Smartlead)
- DNS provider (for SPF/DKIM/DMARC checks)
- Slack (delivery)

## Gotchas

- Reply rate is a LAGGING indicator — by the time it drops, damage is done
- Engagement rate (opens, clicks) is the EARLIEST signal — watch this hardest
- Don't share sender domains across multiple campaigns / reps — one bad sender torches everyone
- Warm-up is non-negotiable for new domains — 4-8 weeks minimum before scaling volume
- Verify the list before sending — bouncing kills reputation fastest
