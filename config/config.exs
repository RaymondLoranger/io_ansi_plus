import Config

# ANSI escapes are typically enabled on all Unix terminals. They are also
# available on Windows consoles from Windows 10, although it must be
# explicitly enabled for the current user in the registry by running the
# following command:
#
#     reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 1
#
# To undo:
#
#     reg add HKCU\Console /v VirtualTerminalLevel /t REG_DWORD /d 0
#
# Otherwise, to allow mix messages in colors:
#
# config :elixir, ansi_enabled: true
