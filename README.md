# Prompt Customization (Starship, Powershell, ZSH)

### Windows Terminal Settings
- Zorg ervoor dat je een [Nerdfont](https://www.nerdfonts.com/font-downloads) gebruikt in de Windows Terminal zodat de juiste unicode characters worden weergegeven.

#### Powershell
- Installeer [Chocolatey](https://chocolatey.org/install)
- Installeer Starship Prompt via Chocolatey in Powershell
```bash
choco install starship
```
- Navigeer naar C:\Users\Username en maak een mapje genaamd .config
- Zet de starship.toml file in de .config file en pas de file aan naar jouw wensen
```toml
# Shows the username
[username]
style_user = "white bold"
style_root = "black bold"
format = "[ COMPUTERNAAM]($style) "
disabled = false
show_always = true
```
- Edit de Powershell $PROFILE zodat deze Starship gebruikt.
```bash
code $PROFILE
```
```ps1
$ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
$ENV:STARSHIP_DISTRO = "者"
Invoke-Expression (&starship init powershell)
```

#### WSL / Linux
- Installeer de [ZSH Shell](https://www.tecmint.com/install-zsh-in-ubuntu/)
- Navigeer naar de juiste folder via `cd ~` en open .zshrc met `code .zshrc`
- Zet de juiste configuratie in .zshrc en sla het bestand op
- Maak in de `~` directory een .config mapje aan met een .starship.toml erin
- Voeg de configuraties van starship.toml toe en pas aan naar wens
- Gebruik `source .zshrc` uit om de configuratiebestanden te updaten
