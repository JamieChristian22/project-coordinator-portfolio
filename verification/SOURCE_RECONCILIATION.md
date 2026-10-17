# Original source reconciliation

Independent arithmetic from the supplied CSVs and workbook source cells. Original workbook formula execution is outside this check. These results describe original simulations, not the separate control exercises.

## Base-budget reconciliation

| Project | Baseline | Actual | Favorable variance | Variance % |
|---|---:|---:|---:|---:|
| E-Commerce_Platform_Launch | $90,000 | $88,450 | $1,550 | 1.72% |
| Global_Leadership_Training_Rollout | $128,000 | $126,300 | $1,700 | 1.33% |
| Hospital_Intake_Workflow_Optimization | $105,000 | $103,150 | $1,850 | 1.76% |
| Salesforce_CRM_Implementation | $150,000 | $148,400 | $1,600 | 1.07% |

## E-commerce reporting populations

The weekly CSV sums to **109/116 (93.97%)** task delivery. The final week is **24/24 (100%)**. The workbook Task Tracker is a separate ten-item deliverable list, so its 100% closeout is not the same denominator. Weekly milestones are **9/10 (90.00%)** within the reported weekly rows. A late milestone can later close; weekly delivery and final closure must be labeled separately.

Velocity rises from 24 to 48 in the synthetic series. Without a stable point-estimation scale and capacity history this is not evidence of a 100% productivity gain. Open issue counts are snapshots; do not sum them as distinct issues.

## Hospital intake

Registration-time reduction: **48.65%**. Wait-time reduction: **44.52%**. These compare weekly averages in the simulation. Patient-level timestamps, medians, tail wait times, and comparable case mix would be needed to validate an operational claim.

## Leadership training denominator bridge

Regional roster: 1,240 targeted, 1,201 registered, 1,160 attended, 1,132 completed. Attendance / registered = **96.59%**. Completed / attended = **97.59%**. Completed / target = **91.29%**. These are three distinct measures.

The weekly CSV describes a separate activity series and does not reconcile to unique regional participants. Do not total weekly attendees into the regional headcount. Without person-level keys, deduplicated program completion cannot be independently reconstructed from weekly activity alone.

## Salesforce readiness

The coordinator scenario targets 140 users, unlike the separate 75-user manager scenario. Final active users 138 / 140 = **98.57%**, consistent with the rounded 98.6% adoption value. The 98.2% UAT rate over 228 executed cases does not establish exact integer pass counts from the rounded percentage alone. Preserve it as a reported scenario rate until case-level outcomes are supplied. Week 1 UAT and migration have zero activity and should be interpreted as not measured.

Reserve rows are not included in the base-budget totals above. Favorable variance is not an approved reserve transfer.
