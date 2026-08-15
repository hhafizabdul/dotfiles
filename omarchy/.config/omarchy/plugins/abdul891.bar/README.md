# abdul891.bar

The built-in Omarchy bar (`omarchy.bar`), cloned so it can be limited to
specific monitors. Nothing else is customized.

Only three files are needed: `manifest.json`, `Bar.qml`, and `BarModel.js`
(imported by `Bar.qml`). Widgets and indicators still come from the built-in
first-party plugins — a third-party plugin cannot register `omarchy.*` ids
anyway, so copying them would be dead weight.

## The one change

`Bar.qml` gains an `enabledOutputs` list read from `bar.monitors` in
`~/.config/omarchy/shell.json`. A `BarPanel` on an output that is not listed
stays invisible and uses `ExclusionMode.Ignore`, so it reserves no space.
An empty or absent `bar.monitors` means every screen, i.e. built-in behavior.

```json
"bar": {
  "id": "abdul891.bar",
  "monitors": ["DP-2", "DP-3"]
}
```

Names are Hyprland output names (`hyprctl monitors`).

## Re-syncing after an Omarchy update

Upstream lives at `/usr/share/omarchy/shell/plugins/bar/`. To pull in changes:

```sh
diff -u /usr/share/omarchy/shell/plugins/bar/Bar.qml Bar.qml
cp /usr/share/omarchy/shell/plugins/bar/BarModel.js BarModel.js
```

The diff should only ever show the `enabledOutputs`/`outputEnabled` property
and the two `BarPanel` lines (`visible`, `exclusionMode`). Re-apply those on
top of the new upstream `Bar.qml`.

To drop the customization entirely: `omarchy bar reset` (or remove `bar.id`
from `shell.json`) and delete this directory.
