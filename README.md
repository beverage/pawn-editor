# PawnEditor

Steer the story in the direction you want it to go. Heal injuries, teleport missing pawns back, change backstories thatdo not fit the narrative.

Pawn Editor is a new editor for your pawns inspired by great mods like Character Editor and Prepare Carefully.

Your last colonist exerts her final breath as she dies. Not even her ultratech armor orarchotech implants could save your colony from... a rabbit? Tend to your pawns and shape them in a way that fits the story you had in mind.

## Usage

## Mod Support

## FAQ

## Developing
### Building / Deploying
The build and release process is now meant to be cross-platform, however it remains to be tested on Windows.  While the updated project configuration should _Just Work^TM^_ on all platforms, a [devcontainer setup](https://code.visualstudio.com/docs/devcontainers/containers) is provided (and preferred) for OSX/Linux, and building work for all platforms outside of one.  Additionally, dependency management and local deployment scripts are provided for OSX.

[Dev Containers](https://code.visualstudio.com/docs/devcontainers/containers) are preffered as it creates a reproducable build environment for everyone.

The project parts relevant to build and deployment are layed out as follows:
```
.
├── .devcontainer       <-- The devcontainer spec.  Just a simple .NET base image.
│
├── Source/PawnEditor/PawnEditor.csproj     <-- Updated and minimized csproj for cross-platform building.
├── Source/PawnEditor/PawnEditor.sln        <-- Not strictly needed anymore.  For legacy purposes.
│
├── build-osx.sh        <-- Builds the mod and moves it to Rimworld's custom mods folder.
└── setup-osx.sh        <-- Sets up dependencies as expected by the csproj for Intellisense purposes only.
```

> A proper Makefile would probably make more sense going forward.

In its simplest form, simply running `dotnet build Source/PawnEditor` from the repository root is enough to build the mod.  Everything else is for enhancing the development experience.

### Project Layout

```
├── Defs
├── Dialogs
│   ├── EditMenus
│   └── ListingMenus
├── ModCompat
├── Properties
├── SaveLoad
├── Tabs
│   ├── AnimalMech
│   ├── Humanlike
│   │   └── Bio
│   ├── NPCFaction
│   └── PlayerFaction
├── UI
└── Utils
```

### Dependencies

- [Harmony](https://harmony.pardeike.net/articles/intro.html) (Indirectly now via RimRef.)
- [Krafs.Publicizer](https://github.com/krafs/Publicizer)
- [Krafs.RimRef](https://github.com/krafs/RimRef)
