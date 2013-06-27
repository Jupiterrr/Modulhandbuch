# Modulhandbuch
Das Projekt versucht Modulhandbücher des [Karlsruher Institut für Technologie (KIT)](http://www.kit.edu/) in einem öffentlichen maschinenlesbaren Format bereitzustellen.

In diesem Repository wird zunächst direkt eine Webseite mitentwickelt, welche das Modulhandbuch anzeigen kann.

Aktuelle Version der Website:
[http://jupiterrr.github.io/Modulhandbuch](http://jupiterrr.github.io/Modulhandbuch)

## Requirements
* ruby
* bundler
* `bundle install`

## Getting Started
```
middleman server
```

## Status
Ich versuche zunächst anhand des [Informatik BA Modulhandbuchs](http://www.informatik.kit.edu/downloads/studium/mhb_info_ba_SS13.pdf) einen Prototypen zu erstellen.

---

### Notizen
#### Deployment
```
middleman build [--clean]
middleman deploy [--clean]
```

* gesamte Studium/Zukunft planen
	* ECTS gesamt
	* ECTS Semester
	* es muss bekannt sein welche leistungen schon erbracht wurden
	