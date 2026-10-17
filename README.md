# Project Coordinator Portfolio — Jamie Christian II

Practical project simulations showing how I structure delivery, coordinate owners, evaluate tradeoffs, and communicate project health.

> **Evidence disclosure:** These are portfolio simulations, not paid client engagements. Budgets, results, approvals, and supplemental exercise records are fictional. Screenshots demonstrate only what is visible in them. The verification report distinguishes automated checks from unverified native-tool behavior.

## Start here

| Project | Demonstrated role | Decision or coordination challenge | Artifacts |
|---|---|---|---|
| [E-commerce launch](E-Commerce_Platform_Launch/README.md) | Project coordinator | Payment certification evidence arrives after readiness cutoff | [Review evidence](E-Commerce_Platform_Launch/Evidence_Index.md) |
| [Hospital intake](Hospital_Intake_Workflow_Optimization/README.md) | Project coordinator | Insurance exceptions accumulate between registration and verification | [Review evidence](Hospital_Intake_Workflow_Optimization/Evidence_Index.md) |
| [Salesforce coordination](Salesforce_CRM_Implementation/README.md) | Implementation coordinator | Training completion is high but role-based activation is incomplete | [Review evidence](Salesforce_CRM_Implementation/Evidence_Index.md) |
| [Leadership rollout](Global_Leadership_Training_Rollout/README.md) | Program coordinator | Regional makeup sessions conflict with facilitator availability | [Review evidence](Global_Leadership_Training_Rollout/Evidence_Index.md) |

## What to review in five minutes

1. Open a project's **Delivery_Case.md** for the business problem, options, accountability, acceptance, and handoff.
2. Follow its **Control_Exercise** from issue to decision, action, test, budget, and release gate.
3. Use its **Evidence_Index.md** to open the original workbook, report, or supporting artifact.
4. Read [verification results](verification/REPORT.md) and [metric definitions](docs/METRICS_AND_EVIDENCE.md).

## Capabilities demonstrated

| Capability | Reviewable evidence |
|---|---|
| Planning and dependencies | Linked tasks, forward/backward schedule calculations and float |
| Cost control | Baseline, actual, remaining estimate, forecast and authorized-change distinction |
| Risk and decisions | Project-specific options, accountable approvers and escalation conditions |
| Coordination | Owner-based action follow-up, due days, evidence and handoff |
| Acceptance | Requirement-to-test traceability and release gates that remain on hold when incomplete |
| Reporting | Reproducible calculations, workbook inventory and source-data checks |

## Run the checks

```bash
python scripts/source_metrics.py
python scripts/validate_portfolio.py
python -m unittest discover -s tests -v
```

No third-party packages are required. [Validation design](docs/VALIDATION.md) explains scope and limitations. Generated reports are committed so reviewers can inspect results without installing anything.

Read the [original-source reconciliation](verification/SOURCE_RECONCILIATION.md) for exact budget arithmetic, reporting denominators, and documented source discrepancies.

## Interview use

Choose one relevant case, explain the constraint and options, identify who can authorize the decision, then show the linked records. Separate the fictional outcome from the calculation you can reproduce. The portfolio supports a discussion of capability; it is not evidence of years of professional delivery experience.

**Background:** B.S. Entrepreneurial Management, Virginia Union University.

[LinkedIn](https://www.linkedin.com/in/jamiechristian2/) · [GitHub](https://github.com/JamieChristian22)
