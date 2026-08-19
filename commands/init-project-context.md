Scaffold a `.cursor/rules/project-context.mdc` file in the current workspace so every Firebrand Agent chat knows project-specific settings (source control, CI, hosting, auth, stacks, locales, conventions).

1. If `.cursor/rules/project-context.mdc` already exists, read it and ask the user which sections to update. Do not overwrite blindly.
2. Otherwise, copy the template from `E:\AI\MyAgents\templates\project-context.mdc` into `.cursor/rules/project-context.mdc`.
3. Ask the user to fill in the key fields (or provide answers now):
   - Source control provider & repo URL
   - CI/CD system & deploy target
   - Database & auth provider/method
   - Stack overrides (if not default .NET/Angular/Flutter)
   - Localization (languages)
   - Conventions (commits, branches, secrets)
4. Fill in answers the user provides. Leave unknown fields as-is (agents will ask or use defaults).
5. End with the path to the file and a reminder: "Every Firebrand Agent chat in this project will read this context automatically."
