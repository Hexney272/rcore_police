# rcore_police

**Follow the installation guide in documentation link below, please!**

## **Documentation**
If you have any questions, please take a look into our rich documentation containing all features, settings and more!

**📚 Installation** https://documentation.rcore.cz/paid-resources/rcore_police/install_page <br/><br/>
**📚 Features** https://documentation.rcore.cz/paid-resources/rcore_police/features <br/><br/>

If you still have any questions after reading documentation, feel free to reach out to us on our discord!

📧 https://discord.rco.re/

# 🚓 How to Register a New Police Station

1. **Open the Preset Creator**
    - Type:  
      ```bash
      /preset_creator
      ```
    - Fill out all required information for your new police station.

2. **Select a Valid Police Map**
    - Choose a police map that is **not already defined**.
    - Carefully **define all necessary points** (spawn, locker, etc.).

3. **Restart police resource**
    - **Restart** to apply changes.
    - Make sure the resource is loaded:  
      ```bash
      ensure rcore_police
      ```

4. **Your New Police Station is Ready!**
    - You should now see your new police station in-game.

---

## 🔧 Additional Adjustments

- To further tweak your police station:
  - Edit the file at:  
    ```
    data/maps/your_police_map
    ```
  - Make any additional changes as needed.

---


## Commands

### `/rcore_police_help_boss_setup` *(Client only)*
- Likely a **helper/test command** that shows info or triggers UI for setting up boss-related configs (e.g. police boss menu, department setup).  
- Since it’s **client only**, it just runs code on your game client, not on the server.

---

### `/rcore_police_debug_access` *(Client only)*
- The debug command you shared before.  
- Prints to console whether your **current job** has access to the **current zone**.  
- Shows zone type, label, duty state, job owner(s), job state, and if your job is allowed.  
- Purely a **debugging tool** for devs/testing zone permissions.

---

### `/rcore_police_test_admin` *(Client only)*
- Debug command for checking your player rights/permissions. 
---

### `/rcore_police_inventory_test_stash_self` *(Client only)*
- Tests the **stash system** for your own character.  
- Likely opens a stash linked to you to confirm that storing/retrieving items works as intended.

---

### `/rcore_police_debug_enviroment` *(txAdmin live console only)*
- Runs **only inside the txAdmin live console** (not in-game).  
- Debugs the environment variables or configuration of the police resource.  
- Useful for developers/admins to troubleshoot setup issues directly from txAdmin.
