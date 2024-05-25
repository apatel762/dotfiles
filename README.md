# dotfiles

Managing the mutable directories on my machines

## Usage

### Flatpaks

Download all the apps that you usually use:

```bash
flatpak/install
```

### `var`

This folder contains a view of the custom config that I want to mirror to `/var`.

To apply the config, run the below command **on your host terminal session**:

```bash
sudo rsync -av ./var /
```

You may need to log out and log back in to see the changes.

### `home`

Install chezmoi on your machine and run:

```bash
chezmoi init --apply apatel762
```

See [Start using chezmoi on your current machine](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine).

TODO: should have more of a two-phase approach
where -> init would load secrets into the `[data]` block and apply would render the templates using this data, that way, we only need to load the secrets once
