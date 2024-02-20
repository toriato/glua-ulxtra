# glua-ulxtra
---
Yet another ULX extra command addon.

## Commands
> [!TIP]  
> Organized in the order of categories and detailed functions

### Utility
#### `freezeprops.lua`
- `ulx freezeprops` freezes all props.

#### `clear.lua`
- `ulx clear [PlayerArgs=^]` removes target's client-side decals, sounds, and ragdolls.
- `ulx decals [PlayerArgs=^]` removes target's client-side decals (sprays, blood, etc).
- `ulx sounds [PlayerArgs=^]` stops all sounds playing on the target's client-side.
- `ulx ragdolls [PlayerArgs=^]` removes all of the target's client-side ragdolls.

#### `respawn.lua`
- `ulx respawn [PlayersArg=self]` forcibly respawns the target.

### Teleport
#### `spawnpoints.lua`
> [!NOTE]  
> Specifies one or multiple spawn points per map, per player.  
> If multiple spawn points are specified, one is randomly selected upon respawn.  
> The specified spawn points are used in the following order:
> 1. [Brick Point from Minigame Helpers](https://steamcommunity.com/sharedfiles/filedetails/?id=121079243)
> 1. Player-specific spawn points
> 1. Global spawn points
> 1. `info_player_start`
- `ulx removespawnpoint [PlayersArg=self]` removes all spawn points for the target on the current map.
- `ulx setspawnpoint [PlayersArg=self]` sets the spawn point for the target on the current map, removing all existing ones if multiple were added.
- `ulx addspawnpoint [PlayersArg=self]` adds a spawn point for the target on the current map.
- `ulx removeglobalspawnpoint` removes all spawn points applicable to all players on the current map.
- `ulx setglobalspawnpoint` sets a spawn point applicable to all players on the current map, removing all existing ones if multiple were added.
- `ulx addglobalspawnpoint` adds a spawn point applicable to all players on the current map.

## Frequently Asked Questions
- **Q. Is there a license?**  
  Not really, but if anything, it would be considered Public domain.
- **Q. Is it okay to re-upload it elsewhere?**  
  Yes, feel free to do so.