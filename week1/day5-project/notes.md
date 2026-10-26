# Day 5 - Week 1 Mini Project

## Project: "My First DevOps Setup"

### Goal
Set up a simple project with proper Git workflow, Linux scripts, and documentation.
This simulates real Day 1 onboarding at a DevOps team.

### Tasks

#### 1. Git Repository Setup
- Create a GitHub repo named `devops-week1-project`
- Add a proper `.gitignore`
- Add a `README.md` describing the project
- Use feature branches and a pull request

#### 2. Linux Automation Script
Create a script `setup.sh` that:
- Creates a folder structure for a web application
- Sets correct permissions
- Writes a config file
- Logs the setup to a file

#### 3. System Info Script
Create `sysinfo.sh` that outputs:
- OS and kernel version
- CPU and memory info
- Disk space
- Current logged-in users
- Network interfaces

### Deliverables
- GitHub repo link
- Screenshot of the PR merged
- Both shell scripts working

### Bonus
- Add a pre-commit hook that prevents committing `.env` files
- Write a `Makefile` with targets: `setup`, `clean`, `info`
