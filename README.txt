ACADEMIC SUPER AI — PHASE 7: GUIDED PROJECT BUILDER

Based on Phase 6 Developer Studio. Retains the existing academic research/book library features, free-only Puter model selection guard, developer modes, and Supabase schema.

NEW IN PHASE 7
- Guided Project Builder form on the welcome screen.
- Collects project name, project type, target platform, preferred stack, database, hosting, required features, and constraints.
- Builds a detailed engineering brief and submits it to the existing Full-Stack Developer mode.
- Requests scope and assumptions, architecture, schema, API contracts, security, full project tree, complete source files in numbered batches, setup/build/test/deployment instructions, and acceptance tests.
- Adds explicit honesty rules: the AI must not claim code was executed, compiled, tested, zipped, or deployed unless that actually happened.
- Existing :free-only model guard is unchanged. No paid model is automatically selected.

LIMITATIONS
- This is a guided prompt/workflow, not an autonomous IDE, compiler, cloud build server, or one-click ZIP generator.
- The AI model still determines reasoning, context length, output limits, and code quality. Large projects may require multiple numbered responses.
- Actual compilation, device testing, ZIP packaging, and deployment require appropriate runtime/file tools and user-side verification.
- Supabase is not connected automatically. Configure the project and secrets separately; never put service-role keys in frontend code.

DEPLOY
1. Extract the ZIP.
2. Replace the deployed project's index.html with this package's index.html.
3. Keep supabase_schema.sql for later database setup; it is not executed automatically.
4. Commit/push to GitHub and let Vercel redeploy.
5. On the welcome screen, fill in the Project Builder fields and press the build button.

CHECKS
- Inline JavaScript syntax checked with Node.js --check.
- Manual browser/provider testing and real project compilation were not performed in this environment.
