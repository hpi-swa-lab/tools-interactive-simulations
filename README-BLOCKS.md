# ECS-Blocks

An editor for programming novices which attempt to understand the ECS programming pattern.

## Install

ECS-Blocks depends on Sandblocks, so an installation of Sandblocks is required:
```smalltalk
Metacello new
  baseline: 'Sandblocks';
  repository: 'github://tom95/Sandblocks:master/packages';
  get; load.
```

After that, the installation of ECS-Blocks is possible:
```smalltalk
Scanner allowBlockArgumentAssignment: true.

Metacello new
  baseline: 'ECS';
  repository: 'github://hpi-swa-lab/tools-interactive-simulations:blocks/packages';
  get; load.
```

Open example project in the editor:
```smalltalk
" A gas tank simulation with variable amount of particles. "
SBBrowserEditor openInWindow: (ECSBlocksEditor openFor: GasTankUniverse)
```

## Basic Usage

```smalltalk
SBBrowserEditor openInWindow: (ECSBlocksEditor open)
```

## Concepts

In the following is a quick description of concepts and names this code base uses.

#### Core
* **Universe**: holds on to all state of the simulation; entrypoint for the simulation
* **Entity Block**: an object in the universe identified by its id; does not exist as a class in the system but is always accessed through the universe
* **Component Block**: a data class with fields that can hold a state of an entity when attached to an entity block
* **System Block**: a class without state that gets a reference to the universe and is able to manipulate the state of the entities' components; therefore a system controls the behaviour of the objects in the game


#### Essential Components
To create new games and interact with the universe some concepts are essential. Therefore some predefined components exist in the system:
* `DeltaTime`: this component holds frame timing information for performance independent movements; the predefined `TimeSystem` writes to that component
* `Transform`: by using this component for position and size of the entities, the tools are able to pick objects etc.
* `Rendered`: indicates that an entity with that component should be rendered in the view, e.g. give an object a color or use an image to customize the entity
* `UniverseView`: you can open multiple windows to look at the same simulation; the value `isCurrent` indicates which of the simulations is active and can read event states; values like the size of the view and the mouse position can be requested from this component
* `KeyEvent`: this component can be requested to get current key events

## Known issues
* **Deletion of components**: deletion of component classes does not initialize a deletion of components that are connected to entities
