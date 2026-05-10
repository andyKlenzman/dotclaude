# Purpose

Analyze job descriptions to understand what the market is asking for.
Do not rewrite resumes during this task.

---

# Input

The user may provide:

- a single job description file
- multiple job descriptions
- a folder of job descriptions

Examples:

/jobs/openai_pm.md

/jobs/product_roles/

---

# Process

## 1. Read job descriptions

Identify recurring:

- hard skills
- technical tools
- leadership expectations
- communication expectations
- domain knowledge
- business outcomes
- repeated keywords
- repeated action verbs

---

## 2. Identify hidden expectations

Infer unstated expectations such as:

- ambiguity tolerance
- startup adaptability
- stakeholder influence
- executive communication
- operational rigor
- product intuition

---

## 3. Detect seniority signals

Identify expectations related to:

- ownership
- leadership
- mentorship
- strategic thinking
- execution

If seniority is not expected, tailor the analyisis to this as well. The question is

---

# Output

Create:

/market_analysis/[YYYY-MM-rolename].md

Structure:

# Market Summary

# Core Skills

# Leadership Expectations

# Communication Expectations

# Technical Expectations

# Hidden Expectations

# Common Business Metrics

# Repeated Language Patterns

# Gaps In My Experience Archive

# Stories To Extract In Future Interviews

---

# Rules

Do not create resumes.

Do not scrape experiences.

Do not fabricate qualifications.

Optimize for helping future resume creation and interview preparation.