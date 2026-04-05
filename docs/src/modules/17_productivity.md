# Productivity

A collection of fun, useful utilities that make the terminal a joy to work in.

---

## Functions & Aliases

### `weather`
- **Description:** Get the weather forecast for your city directly in the terminal
- **Usage:** `weather [city]`
- **Example:** `weather London`

```bash
weather Dhaka
# Weather report: Dhaka
#
#      \   /     Clear
#       .-.      +32(34) °C
#    ― (   ) ―   ↑ 12 km/h
#       `-'      10 km
#      /   \     0.0 mm
```

> **💡 Powered by** [wttr.in](https://wttr.in) — no API key needed!

### `joke`
- **Description:** Fetch a random programmer joke
- **Usage:** `joke`
- **Example:** `joke`

```bash
joke
# Why do programmers prefer dark mode?
# Because light attracts bugs!
```

### `timer`
- **Description:** Set a countdown timer — plays a bell when done
- **Usage:** `timer <duration>`
- **Example:** `timer 25m`

```bash
timer 5m
# (waits 5 minutes...)
# ✔ Timer done!
```

> **💡 Supported units:** `s` (seconds), `m` (minutes), `h` (hours). Perfect for Pomodoro workflows!

### `randpass`
- **Description:** Generate a cryptographically secure random 16-character password
- **Usage:** `randpass`
- **Example:** `randpass`

```bash
randpass
# K8mP2nQx1aLjTyBv
```

> **💡 Powered by** `openssl rand -base64 16` — suitable for generating strong passwords.

---

{{#template ../templates/footer.md module=Productivity}}
