# dotfiles

Managing the mutable directories on my machines.

## Usage

We are using `chezmoi` in a slightly non-standard way. As a result, we need to do some bootstrapping ourselves.

```bash
curl -sL https://raw.githubusercontent.com/apatel762/dotfiles/master/chezmoi-bootstrap | sh
```

After this script has completed, you can run the commands in the next section.

### Setup `/home`

Run:

```bash
chezmoi init
```

You will be prompted for the password to the KeePassXC vault. This command will read secrets from the vault and write them to the `chezmoi` configuration file. You can verify that this has worked by looking at the file:

```bash
cat ~/.config/chezmoi/chezmoi.toml
```

If all looks OK, you can apply the dotfiles by running:

```bash
chezmoi apply --refresh-externals=auto
```

You only need to run `chezmoi init` when you have rotated your secrets (or added/removed secrets), and you would like to re-generate the configuration file to match this.

For more information, see [Start using chezmoi on your current machine](https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine).

### Setup `/var`

This folder contains a view of the custom config that I want to mirror to `/var`.

To apply the config, run the below command:

```bash
# DO THIS ON YOUR HOST TERMINAL SESSION (i.e. not in your workspace container)
sudo rsync -av ./var /
```

You may need to log out and log back in to see the changes.
