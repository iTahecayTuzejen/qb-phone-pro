# 📱 QB-Phone Pro Installation Guide

> **A comprehensive, step-by-step guide to install and configure QB-Phone for your FiveM QBCore server**

> **Premium QB-Phone by FiveM QBCore**  
> **For premium server buy visit here:**  
> **🌍 Website: [fivem-qbcore.com](https://fivem-qbcore.com)**  
> **💬 Discord: [discord.gg/qbcoreframework](https://discord.gg/qbcoreframework)**

---

## 📋 Table of Contents

- [🚀 Quick Start](#-quick-start)
- [📦 General Setup](#-general-setup)
- [💼 Employment System Setup](#-employment-system-setup)
- [💰 Crypto System Setup](#-crypto-system-setup)
- [🔧 Troubleshooting](#-troubleshooting)
- [📞 Support](#-support)

---

## 🚀 Quick Start

**For new servers:** Follow the complete setup guide below.

**For existing servers:** Make sure to backup your data before proceeding with the installation.

---

## 📦 General Setup

### Step 1: Remove Old Installation
```bash
# Delete your existing qb-phone folder from your resources directory
```

### Step 2: Database Setup

#### For New Servers:
1. Run the provided SQL file in your database
2. This will create all necessary tables for the phone system

#### For Existing Servers:
⚠️ **IMPORTANT:** Always backup your database before proceeding!

1. **Backup your database** (this is crucial!)
2. Carefully update your SQL using the provided migration files
3. Verify data integrity after the update

### Step 3: Resource Installation
1. Drop the `qb-phone` resource into your server's resources folder
2. Add `ensure qb-phone` to your `server.cfg`
3. Start your server

---

## 💼 Employment System Setup

> **Note:** If you already have a multijob system and don't want to use this one, you can skip this section.

### Step 1: Initial Employment Setup

1. **Navigate to:** `qb-phone/server/employment.lua`
2. **Find the line:** `local FirstStart = false`
3. **Change it to:** `local FirstStart = true`

```lua
local FirstStart = true  -- Change this from false to true
```

### Step 2: Run Initial Setup
1. **Start your server** and ensure qb-phone is running
2. **Monitor the console** (F8) for completion messages
3. **Wait for the process to complete** - this may take several minutes depending on your player count

### Step 3: Disable First Start
1. **Return to:** `qb-phone/server/employment.lua`
2. **Change back to:** `local FirstStart = false`

```lua
local FirstStart = false  -- Change this back to false
```

### Step 4: Update QBCore Commands

#### Replace the `setjob` command:
**File:** `qb-core/server/commands.lua`

**Find the existing `setjob` command and replace it with:**

```lua
QBCore.Commands.Add('setjob', 'Set A Players Job (Admin Only)', { 
    { name = 'id', help = 'Player ID' }, 
    { name = 'job', help = 'Job name' }, 
    { name = 'grade', help = 'Grade' } 
}, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if Player then
        local job = tostring(args[2])
        local grade = tonumber(args[3])
        local sgrade = tostring(args[3])
        local jobInfo = QBCore.Shared.Jobs[job]
        if jobInfo then
            if jobInfo["grades"][sgrade] then
                Player.Functions.SetJob(job, grade)
                exports['qb-phone']:hireUser(job, Player.PlayerData.citizenid, grade)
            else
                TriggerClientEvent('QBCore:Notify', source, "Not a valid grade", 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, "Not a valid job", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', source, Lang:t('error.not_online'), 'error')
    end
end, 'admin')
```

#### Add the `removejob` command:
**Add this new command below the `setjob` command:**

```lua
QBCore.Commands.Add('removejob', 'Removes A Players Job (Admin Only)', { 
    { name = 'id', help = 'Player ID' }, 
    { name = 'job', help = 'Job name' } 
}, true, function(source, args)
    local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
    if Player then
        if Player.PlayerData.job.name == tostring(args[2]) then
            Player.Functions.SetJob("unemployed", 0)
        end
        exports['qb-phone']:fireUser(tostring(args[2]), Player.PlayerData.citizenid)
    else
        TriggerClientEvent('QBCore:Notify', source, Lang:t('error.not_online'), 'error')
    end
end, 'admin')
```

### Step 5: QB-CityHall Integration (If Applicable)

**If you use qb-cityhall, update the ApplyJob function:**

**File:** `qb-cityhall/server/main.lua`

**Find the `ApplyJob` function and replace it with:**

```lua
RegisterNetEvent('qb-cityhall:server:ApplyJob', function(job, cityhallCoords)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end
    local ped = GetPlayerPed(src)
    local pedCoords = GetEntityCoords(ped)
    local JobInfo = QBCore.Shared.Jobs[job]
    if #(pedCoords - cityhallCoords) >= 20.0 or not availableJobs[job] then
        return DropPlayer(source, "Attempted exploit abuse")
    end
    Player.Functions.SetJob(job, 0)
    exports['qb-phone']:hireUser(job, Player.PlayerData.citizenid, 0)
    TriggerClientEvent('QBCore:Notify', src, Lang:t('info.new_job', {job = JobInfo.label}))
end)
```

### Step 6: Final Restart
1. **Restart your server completely**
2. **Verify the new commands are working**
3. **Test the phone functionality**

**Expected Result:**
Your admin commands should now appear like this:

![QBCore Commands](https://i.gyazo.com/beb2bd18c02088c184e5e381a9f4962a.png)

---

## 💰 Crypto System Setup

### Step 1: Locate Player Metadata
**File:** `qb-core/server/Player.lua`

### Step 2: Add Crypto Metadata
**Find the metadata section** (looks like `PlayerData.metadata['inside']`) and add:

```lua
PlayerData.metadata['crypto'] = PlayerData.metadata['crypto'] or {
    ["shung"] = 0,
    ["gne"] = 0,
    ["xcoin"] = 0,
    ["lme"] = 0
}
```

**Expected Result:**
Your metadata should look similar to this:

![Metadata Table](https://i.gyazo.com/5422c6ebd1ede57ab523f2e1e07218c4.png)

---

## 🔧 Troubleshooting

### Common Issues:

1. **Phone not working after installation:**
   - Ensure all SQL files have been executed
   - Check server console for errors
   - Verify resource is properly started

2. **Employment system not syncing:**
   - Make sure `FirstStart` was set to `true` and then back to `false`
   - Check that the employment setup completed successfully
   - Restart server after making changes

3. **Commands not working:**
   - Verify you have admin permissions
   - Check that the command files were saved correctly
   - Restart server after command changes

4. **Crypto not saving:**
   - Ensure metadata was added correctly to Player.lua
   - Check for syntax errors in the metadata section

---

## 📞 Support

If you encounter any issues during installation:

1. **Check the troubleshooting section above**
2. **Review your server console for error messages**
3. **Ensure all steps were followed correctly**
4. **Create an issue on GitHub** with:
   - Your server version
   - Error messages from console
   - Steps you've already tried

🌍 Website: [fivem-qbcore.com](https://fivem-qbcore.com)  
💬 Discord: [discord.gg/qbcoreframework](https://discord.gg/qbcoreframework)  
---

## ✅ Installation Checklist

- [ ] Removed old qb-phone installation
- [ ] Executed SQL files (with backup if existing server)
- [ ] Added resource to server.cfg
- [ ] Set `FirstStart = true` in employment.lua
- [ ] Ran initial employment setup
- [ ] Set `FirstStart = false` in employment.lua
- [ ] Updated setjob command in qb-core
- [ ] Added removejob command in qb-core
- [ ] Updated qb-cityhall (if applicable)
- [ ] Added crypto metadata to Player.lua
- [ ] Restarted server completely
- [ ] Tested phone functionality

---

**🎉 Congratulations! Your QB-Phone Pro should now be fully functional!**


