# Configure the current
#
# Current state: Outputs ssh info for manual remote build target setup.
#
# Goals:
# 1. Add vagrant as a ssh target
# 2. Add the vm as a build target
#

Set-Location $PSScriptRoot

vagrant ssh-config | Out-File ssh