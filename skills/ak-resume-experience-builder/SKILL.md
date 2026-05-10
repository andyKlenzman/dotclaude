---
name: ak-experience-extraction
description: Build a role-specific experience inventory using market analysis and user-selected source materials.
---

# Purpose

Create a comprehensive experience inventory for a specific role by extracting relevant accomplishments from user-provided materials.

This skill translates past experience into language aligned with market demand.

It is NOT responsible for creating final resumes.

---

# Required Inputs

1. A market analysis document

Example:
`/market_analysis/product_manager.md`

2. A target role to extract from

Example:
`imagineOn`

3. User-defined source materials

Examples:

- `/resume_archive/`
- `/project_archive/`
- `/notes/`
- `/interviews/`
- specific files provided by the user

Only use materials explicitly provided by the user.

---

# Process

## 1. Read market analysis

Identify:

- critical skills
- recurring keywords
- leadership expectations
- technical expectations
- business outcomes
- communication expectations

Use these as extraction filters.

---

## 2. Review source materials

Search for experiences from the target role that demonstrate:

- measurable impact
- leadership
- technical execution
- communication
- problem solving
- operational ownership
- cross-functional collaboration

Do not blindly copy all content.

Prioritize high-signal experiences relevant to market demand.

---

## 3. Rewrite into resume language

Convert findings into concise STAR-style bullets:

- Situation
- Task
- Action
- Result

Bullets should be:

- metric-driven when possible
- outcome-focused
- concise
- reusable for future resumes

---

## 4. Handle missing information

If important details are missing:

- metrics
- dates
- tools used
- scope
- outcomes

Mark gaps clearly:

[What was the measurable outcome?]

[How many stakeholders were involved?]

[What tools were used?]

Do not invent details.

---

# Output

Create:

`/experience/[YYYY-MM-role-name-market-analysis-name].md`

Structure:

# Role Summary

# Core Responsibilities

# Key Projects

# Leadership Examples

# Technical Examples

# Communication Examples

# Business Outcomes

# Resume Bullets

# Missing Information To Clarify

---

# Rules

Do not fabricate metrics.

Do not create a final tailored resume.

Do not ignore weaker but potentially useful experiences—capture breadth while prioritizing relevance.

The goal is to create a reusable inventory of everything from this role that may be useful for future applications.