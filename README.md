# Custom System

A versatile custom system for FiveM servers.

## Features

- Command system with permission checks
- Database integration for storing custom player data

## Requirements

- FiveM server
- QB-Core framework
- oxmysql

## Installation

1. Download the script files.
2. Place them in your FiveM resources folder.
3. Add `ensure CustomSystem` to your server.cfg file.

## Usage

### Commands

| Command | Description | Permission |
|---------|-------------|------------|
| /customsystem | Custom System Command | admin |

### Permissions

- `admin`: Required to use the `/customsystem` command.

## Configuration

The script can be configured in the `config.lua` file. Here are the available options:

```lua
Config = {}

-- CustomSystem Configuration
Config.CommandName = 'customsystem'
Config.CommandDescription = 'Custom System Command'
Config.CommandPermission = 'admin'

-- Database Configuration
Config.DatabaseName = 'customsystem'
Config.DatabaseTable = 'custom_data'
```

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=custom-system&utm_content=bottom) — describe it in one sentence and get the full source code.
