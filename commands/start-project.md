Start a greenfield (or new-scope) delivery with the Firebrand Agents pack. Do not implement the whole product in this pass.

1. Read and follow skills `start-greenfield`, `docs-contract`, `firebrand-agents-delivery`, and `escalate-requirements` if available.
2. In the **application** workspace, create `docs/` if missing. Seed from `E:\AI\MyAgents\templates` when that folder exists.
3. If `.cursor/rules/project-context.mdc` does not exist, copy it from `E:\AI\MyAgents\templates\project-context.mdc`. Ask the user to fill key fields (source control, CI, hosting, auth, stacks, locales). This persists across chats.
4. Invoke the `project-manager` subagent to create or update `docs/project-plan.md` from the user's goals. Platforms default to Angular web, Flutter mobile, and .NET API unless the user omitted one.
5. **Stop after Client questions.** Only PM talks to the client. Do not invent FRs. Do not call BA/UID/TL until the user answers (or explicitly says to proceed with documented assumptions).
6. After answers are in the plan, invoke `business-analyst` for `docs/analysis.md`, then `uiux-designer` and `team-lead` in parallel for `docs/uiux-design.md` and `docs/technical-design.md`.
7. End with: plan path, blockers/client questions, and the exact next invoke prompt.
