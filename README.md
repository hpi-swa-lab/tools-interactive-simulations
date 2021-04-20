# ECS and Interactive Simulations

A small simulation and game engine using the Entity-Component-System pattern.

## Install

```smalltalk
Metacello new
  baseline: 'ECS';
  repository: 'github://hpi-swa-lab/tools-interactive-simulations:master/packages';
  get; load.
```

Open example game in the editor:
```smalltalk
" use wsad to move camera, left click to place obstacles,
  prevent enemies from reaching the center of the map "
OnebitUniverse open.
```

## Basic Usage

```smalltalk
ECSEditor createNewUniverse
```

## Concepts

In the following is a quick description of concepts and names this code base uses.

#### Core
* **Universe**: holds on to all state of the simulation, entrypoint for the simulation
* **Entity**: a number identifying an entity that exists in the universe; does not exist as a class in the sytem but is always accessed through the universe
* **Component**: a data class that is attached to an entity in the universe
* **System**: a class without state that gets a reference to the universe and is only allowed to write and read to the universe's entities' components
* **Pipeline**: a number of systems can be grouped in a pipeline. Two pipelines are always required: one that renders the simulation, the `draw` pipeline; and one `loop` pipeline that is run on every tick and advances the state of the simulation. Simulations are free to use further pipelines, for example for level generation or other tasks.

#### Tool Integration
We make some assumptions about the structure of the simulation for the tools to be able to interact with arbitrary simulations. This is mostly in the form of built-in components that simulations are encouraged to use so that the tools work with them.

These components/systems can be considered essential for important functions of the editor:
* `DeltaTime`, `TimeSystem`: this should likely be the first system in your `loop` pipeline. It will write frame timing information in the DeltaTime component. It is also important for the record-replay function of the editor.
* `UniverseView`: you can open multiple windows to look at the same simulation, they will each use your `draw` pipeline. By getting the UniverseView that `isCurrent`, you can identity which window is currently being drawn/active and can read event states from that component, for example whether the left mouse button is currently pressed.
* `Transform`: by using this component for position and size of your entities, the tools are able to pick objects etc.
* `KeyEvent`: you can query for all currently pressed keys by querying for entities with this component.
* `Label`: attach this component to any entity that you want to have a specific name in the tools, e.g. "player1".

These components/systems are non-essential:
* `InstanceOfTemplate`: this component is automatically attached by the editor to entities that are created from a template. In this way, it can find these entities again in the active simulation and modify properties of all instances.
* `PendingPlacement`/`PlaceDrawSystem`/`PlacementSystem`: if these systems are active, instantiating a template will attach it to the mouse and allow you to place the entity with left-click.
* `Timer`/`TimeSystem`: by using this system in your `loop` pipeline, you can make use of the `Universe>>#in:send:to:with:` method that will perform delayed actions.

