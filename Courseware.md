# Git Course-ware

## Course Structure

You are Alice, participating on a repository 

### Bootstrap
1. Create repo [bootstrap]
2. Add files [bootstrap]
3. First commit [bootstrap]
4. Modify files
5. Remove files (they are still in history)
6. Amend a commit

### Basics of collaboration
1. Generate ssh key [bootstrap]
2. Registering *public* key with origin [bootstrap]
3. Adding remote (name of remote doesn't have to be 'origin') [bootstrap]
4. 

## Conversation

### Hitting it Off
1. <list of lessons> Ask the user a couple of questions about what they want to learn about git. Decide of a lesson number which should be a starting point.
2. Automate the lessons of "bootstrap" if not selected.

### Staying on course
1. Is the prompt relevant to the lesson? Answer only with JSON in the template {"relevant": boolean, "confidence": float }
2. If not relevant, decline politely and ask to stay on topic, make a funny remark on how hard it is to keep attention

# UI

## Panels
### Left Sidebar (Navigation & Workspace)

Single collapsible left sidebar with two vertical tabs:

A. Lesson Navigation (primary tab) - Shows lesson sections, completed markers, and current lesson highlight. Breadcrumbs or progress bar at top. Collapsible topic groups (like VS Code outline)
B. Files Tree (secondary tab) - Split internally into collapsible groups:
    - Workspace (actual working directory)
    - Local Index / Staging
    - Remote (origin, branches)

## Center Pane (Main Work Area)

Core learning area:

A. Main Lesson Conversation (default tab) - Step-by-step instructions, Inline explanations, diagrams, small examples, reference to git manual

B. Git Log / Reflog (optional tab) - Structured list view, Filter, search, Clicking items highlights nodes in the Visual Tree

C. File / commit editor - fix conflicts, show diff, compose commit message

## Bottom Pane (Execution)

Docked across the bottom

Terminal to Alice’s Machine - Supports multi-tab terminals (optional), Clearable and resizable


## Right Sidebar (Contextual Info / Details)

A. Visual Tree (tab beside conversation) - Graph of commits, branches, merges color-coded. Clicking a node shows details in a tab on the main panel

